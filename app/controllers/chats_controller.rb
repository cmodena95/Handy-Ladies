class ChatsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @messages = Message.conversation(current_user, @user)

    @message = Message.new
  end
end
