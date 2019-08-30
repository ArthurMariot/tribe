class UserMailer < ApplicationMailer
  def welcome
    @user = User.last
    mail(to: @user.personal_mail, subject: "Welcome to #{User.last.company.name} 🚀")
  end
end
