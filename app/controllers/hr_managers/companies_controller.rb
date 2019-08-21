class HrManagers::CompaniesController < ApplicationController
  def edit
    @company = current_user.company
  end

  def update
    raise
    @company = current_user.company
      if @company.update(company_params)
        redirect_to hr_managers_features_path
      else
        render :edit
      end
  end

  private

  def company_params
    params.require(:company).permit(:name, :country, :address, :phone_number, :activity, :logo, :photo_header, :photo_description, :twitter_url, :linkedin_url, :github_url, :facebook_url, :short_description, :mission, :history, :founded_in)
  end
end
