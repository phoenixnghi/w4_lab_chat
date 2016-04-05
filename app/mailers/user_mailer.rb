class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_deleted_message.subject
  #
  def notify_deleted_message(message, user)
    @message = message
    @user = user
    mail to: message.user.email
  end
end
