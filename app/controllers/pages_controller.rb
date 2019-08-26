class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    current_user.visit_pages1 = true
  end

  def features
   current_user.visit_pages3 = true
   current_user.save
 end

 def welcome
   current_user.visit_pages2 = true
   current_user.save
 end

 def progress
   current_user.progress
 end

 def buddy
   current_user.visit_pages5 = true
   current_user.save
 end
end

