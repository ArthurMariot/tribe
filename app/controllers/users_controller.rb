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

    @geojson = build_geojson

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
      redirect_to users_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :personal_mail, :corporate_mail, :phone_number, :job_title, :department, :hierarcky_rank, :contract_pdf, :rules_reglementation_pdf, :slack_account)
  end

  def build_geojson
    {
    type: "FeatureCollection",
    features: @users
    }
  end

end
