class ConversationsController < ApplicationController

  def index
    @conversations = @current_user.conversations
  end

  def show
    if authorised_conversation?
      @conversation = Conversation.find(params[:id])
    else
      redirect_to conversations_path
    end
  end

  private

  def authorised_conversation?
    Conversation.find(params[:id]).users.include?(@current_user)
  end

end
