class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # current_user.visit_pages1 = true
  end

  def features
    # current_user.visit_pages2 = true
  end

  def welcome
    # current_user.visit_pages3 = true
  end
end
