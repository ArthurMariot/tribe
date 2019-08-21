class UsersController < ApplicationController
  def index
    @users = User.geocoded

    @markers = @users.map do |user|
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
