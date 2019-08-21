class HrManagers::UsersController < ApplicationController
  def new
    @employee = User.new

    # create
  end

  def create
    raise
    @employee = User.new(user_params)
    if @employee.save?
      redirect_to :new
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :personal_mail, :corporate_mail, :phone_number, :job_title, :department, :team, :hierarcky_rank, :contract_pdf, :rules_reglementation_pdf, :slack_account)
  end
end
