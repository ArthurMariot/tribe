class UsersController < ApplicationController
  def index
    @users = User.geocoded
    current_user.visit_pages1 = true
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

    @geojson = build_geojson

  end

  def show
    @user = User.find(params[:id])
    progress(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @current_user.update(user_params)
      if params['user']['upload_contrat'] || params['user']['upload_internal_rules']
        redirect_to user_documents_path(@user)
      else
        redirect_to users_path
      end
    else
      render :edit
    end
  end


  private

  def progress
    @user = current_user
    @score = 0
    @user.first_name != "" ? @score += 1 : @score
    @user.last_name != "" ? @score += 1 : @score
    @user.avatar != "" ? @score += 1 : @score
    @user.hobby_1 != "" ? @score += 1 : @score
    @user.hobby_2 != "" ? @score += 1 : @score
    @user.hobby_3 != "" ? @score += 1 : @score
    @user.location != "" ? @score += 1 : @score
    @user.linkedin_url != "" ? @score += 1 : @score
    @user.slack_account != "" ? @score += 1 : @score
    @user.personal_mail != "" ? @score += 1 : @score
    @user.visit_pages4 != "" ? @score += 1 : @score
    @user.visit_pages3 != "" ? @score += 1 : @score
    @user.visit_pages2 != "" ? @score += 1 : @score
    @user.visit_pages1 != "" ? @score += 1 : @score
    return @score
  end

  def user_params
    params.require(:user).permit(:location, :linkedin_url, :hobby_1, :hobby_2, :hobby_3, :first_name, :last_name, :personal_mail, :corporate_mail, :phone_number, :job_title, :department, :hierarcky_rank, :contract_pdf, :rules_reglementation_pdf, :slack_account, :avatar, :upload_contrat, :upload_internal_rules, :description)
  end
end
