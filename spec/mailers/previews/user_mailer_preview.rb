# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/notify_message_deleted
  def notify_message_deleted
    UserMailer.notify_message_deleted
  end

end
