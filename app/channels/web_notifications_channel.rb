class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_notifications_channel"
  end

  def unsubscribed
    puts
    # Any cleanup needed when channel is unsubscribed
  end

  def receive data
    ActionCable.server.broadcast "web_notifications_channel", time: data['time']
  end
end
