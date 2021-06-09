class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notification.subject
  #
  def notification(user)
    @user = User.first #Why dont I have access to current_user?

    mail(to: @user.email, subject: "An article is missing your attention!")
  end

  # @greeting = "Hi"
  # mail to: "to@example.org"
end
