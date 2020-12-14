class MessagesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @message = Message.new(message_params)
    @message.sender = current_user
    @message.receiver = @user

    if @message.save
      ActionCable.server.broadcast(
        Message.chat_id(@user, current_user),
        render_to_string(partial: "message", locals: { message: @message })
      )
    else
      render "chats/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
