# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/notify_deleted_message
  def notify_deleted_message
    UserMailer.notify_deleted_message(Message.last, User.last)
  end

end
