class ChatChannel < ApplicationCable::Channel
  def subscribed
    # create a unique string for the chat, composed of the 2 user ids
    user = User.find(params[:id])
    current_user = User.find(params[:currentUserId])

    chat_id = Message.chat_id(current_user, user) #1_18

    stream_from chat_id
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
