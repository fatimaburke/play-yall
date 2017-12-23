class MessagesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @message = current_user.messages.build(message_params)
    @message.save
  end

  private

  def message_params
    params.require(:message).permit(:body, :stream_id)
  end
end
