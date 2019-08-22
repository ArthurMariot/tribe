class CompaniesController < ApplicationController
  def show
    @company = current_user.company
    current_user.visit_pages4 = true
    current_user.save
  end
end
