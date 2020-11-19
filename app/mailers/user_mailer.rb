class UserMailer < ApplicationMailer
  default from: 'fnuttens@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome")
  end
end
