class SendMessageSummaryJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
    sleep(2)
    puts "hello"
  end
end
