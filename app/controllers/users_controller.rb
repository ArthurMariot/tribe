class UsersController < ApplicationController
  def index
    @users = User.geocoded

    @team = Team.where(name: params[:query])
    @users_by_team = User.where(team: @team).geocoded
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
    progress(@user)
    raise
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @current_user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end


  def progress
    @user = current_user
    @score = 0
    @user.first_name != "" ? @score : @score += 1
    @user.last_name != "" ? @score : @score += 1
    @user.avatar != "" ? @score : @score += 1
    @user.hobby_1 != "" ? @score : @score += 1
    @user.hobby_2 != "" ? @score : @score += 1
    @user.hobby_3 != "" ? @score : @score += 1
    @user.location != "" ? @score : @score += 1
    @user.linkedin_url != "" ? @score : @score += 1
    @user.slack_account != "" ? @score : @score += 1
    @user.personal_mail != "" ? @score : @score += 1
    return @score
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :personal_mail, :corporate_mail, :phone_number, :job_title, :department, :hierarcky_rank, :contract_pdf, :rules_reglementation_pdf, :slack_account, :avatar)
  end
end
