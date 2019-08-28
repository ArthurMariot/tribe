class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user.onboarding_status
      user_welcome_url(@user)
    else
      root_path
    end
  end
end
