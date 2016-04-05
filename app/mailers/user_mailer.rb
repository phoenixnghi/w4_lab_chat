class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_message_deleted.subject
  #
  def notify_message_deleted
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
