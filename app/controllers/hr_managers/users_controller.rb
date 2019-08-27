class HrManagers::UsersController < ApplicationController
  def index
    @employees = User.where(onboarding_status: true).order('id DESC')
  end

  def new
    @employee = User.new
  end

  def create
    # new_employee = User.new
    new_employee = User.new(user_params)
    new_employee.company = current_user.company
    new_employee.email = params[:user][:corporate_mail]
    new_employee.password = '123456'
    new_employee.onboarding_status = true
    new_employee.team = Team.find(params[:user][:team][1])
    new_employee.hierarchy_rank = HierarchyRank.find(params[:user][:hierarchy_rank][1])
    # new_employee.geocoded
    # new_employee.time_zone = new_employee.timezone
    # raise
    if new_employee.save!
      UserMailer.with(user: self).welcome.deliver_now
      User.all.geocoded
      u = User.last
      u.time_zone = u.timezone
      u.save
      raise
      redirect_to hr_managers_users_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:buddy, :team, :location, :linkedin_url, :hobby1, :hobby2, :hobby3, :first_name, :last_name, :personal_mail, :corporate_mail, :phone_number, :job_title, :department, :hierarcky_rank, :contract_pdf, :rules_reglementation_pdf, :slack_account, :avatar, :description, :arrival_at)
  end
end
