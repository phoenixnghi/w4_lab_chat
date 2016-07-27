# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  # we add a custom 'test' method here to make it easier to play with
  def test(data)
    ActionCable.server.broadcast('messages', message: "Test: #{data}")
  end
end
