class LikeChannel < ApplicationCable::Channel
    def subscribed
       stream_from "like_channel"
    end
  
    def unsubscribed
      # Any cleanup needed when channel is unsubscribed
    end
  
    def like(data)
      ActionCable.server.broadcast "like_channel", message: data
    end
  end
  