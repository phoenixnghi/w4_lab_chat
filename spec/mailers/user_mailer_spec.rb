require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "notify_message_deleted" do
    let(:mail) { UserMailer.notify_message_deleted }

    it "renders the headers" do
      expect(mail.subject).to eq("Notify message deleted")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
