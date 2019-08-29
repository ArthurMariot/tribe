class UserMailer < ApplicationMailer
  def welcome
    @user = User.last
    mail(to: @user.personal_mail, subject: "Welcome to #{User.last.comapny.name} 🚀")
  end
end
