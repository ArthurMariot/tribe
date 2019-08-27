class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # current_user.visit_pages1 = true
  end

  def features
 end

 def welcome
 end

 def progress
   current_user.progress
 end

 def buddy
   current_user.visit_pages6 = true
   current_user.save
 end

  def user_team_members
    current_user.visit_pages4 = true
    current_user.save
    @team_members = User.where(team_id: current_user.team.id)
  end
end
