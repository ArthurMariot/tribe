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
  end
end
