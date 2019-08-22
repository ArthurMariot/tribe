class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def features
  end

  def welcome
  end

  def documents

  end
end
