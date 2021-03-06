class UsersController < ApplicationController
  SLACK_NOTIFIER = Slack::Notifier.new "https://hooks.slack.com/services/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" do
    defaults channel: "#general"
  end

  def index
    @users = User.geocoded
    current_user.visit_pages3 = true
    current_user.save

    @team = Team.where("name ILIKE ?", "%#{params[:query]}%")

    if params[:query].present?
      @users_by_team = User.where(team: @team).geocoded
    else
      @users_by_team = User.all.geocoded
    end

    @markers = @users_by_team.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url(user.avatar)
      }
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @current_user.update(user_params)
      SLACK_NOTIFIER.post(message)
      if params['user']['upload_contrat'] || params['user']['upload_internal_rules']
        redirect_to user_documents_path(@user)
      else
        redirect_to users_path
      end
    else
      render :edit
    end
  end

  # def progress
  #   @user = current_user
  #   score = 0
  #   @user.first_name != "" ? score += 1 : score
  #   @user.last_name != "" ? score += 1 : score
  #   @user.avatar != "" ? score += 1 : score
  #   @user.hobby_1 != "" ? score += 1 : score
  #   @user.hobby_2 != "" ? score += 1 : score
  #   @user.hobby_3 != "" ? score += 1 : score
  #   @user.location != "" ? score += 1 : score
  #   @user.linkedin_url != "" ? score += 1 : score
  #   @user.slack_account != "" ? score += 1 : score
  #   @user.personal_mail != "" ? score += 1 : score
  #   @user.visit_pages4 != "" ? score += 1 : score
  #   @user.visit_pages3 != "" ? score += 1 : score
  #   @user.visit_pages2 != "" ? score += 1 : score
  #   @user.visit_pages1 != "" ? score += 1 : score
  #   return score
  # end

  private



  def user_params
    params.require(:user).permit(:buddy, :upload_contrat, :upload_internal_rules, :location, :linkedin_url, :hobby_1, :hobby_2, :hobby_3, :first_name, :last_name, :personal_mail, :corporate_mail, :phone_number, :job_title, :team, :hierarcky_rank, :contract_pdf, :rules_reglementation_pdf, :slack_account, :avatar, :upload_contrat, :upload_internal_rules, :description)
  end

  def message
    { text:
    "<!here> Hi all 🖐
    Super excited to let you know that it's the first day of *#{@user.first_name}* who is joining us as a *#{@user.job_title}*.
    #{@user.first_name} lives at #{@user.location} 🌍

    Here are these hobbies:
    - #{@user.hobby_1}
    - #{@user.hobby_2}
    - #{@user.hobby_3}

    Some facts about #{@user.first_name}:
    '#{@user.description}'

    Welcome 🎉",
      gif: "phone" }
  end
end
