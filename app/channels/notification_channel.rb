class NotificationChannel < ApplicationCable::Channel
  def subscribed
     stream_from "notification_channel" #_#{ assistant.state_aux_id }"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
