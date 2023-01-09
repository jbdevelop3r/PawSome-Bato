class UserMailer < ApplicationMailer
  def welcome(user)
    user = @user
    mail to: user.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject

  # First try
  # def welcome
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
end
