class HrManagers::UsersController < ApplicationController

  def index
    @employees = User.where(onboarding_status: true)
  end

  def new
    @employee = User.new
  end

  def create
    new_employee = User.new
    new_employee = User.new(user_params)
    new_employee.company = current_user.company
    new_employee.email = params[:user][:corporate_mail]
    new_employee.password = '123456'
    new_employee.onboarding_status = true
    new_employee.team = Team.find_by(name: params[:user][:team])
    new_employee.hierarchy_rank = HierarchyRank.find_by(name: params[:user][:hierarchy_rank])
    if new_employee.save!
      redirect_to hr_managers_users_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :personal_mail, :corporate_mail, :phone_number, :job_title, :department, :hierarcky_rank, :contract_pdf, :rules_reglementation_pdf, :slack_account, :avatar)
  end
end
