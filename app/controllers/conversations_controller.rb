class ConversationsController < ApplicationController

  def new
    @conversation = Conversation.new
  end

  def index
    @conversations = @current_user.conversations
  end

  def show
    if authorised_conversation?
      @conversation = Conversation.find(params[:id])
      session[:conversation_id] = @conversation.id
      @messages = @conversation.messages.order(:created_at)
    else
      redirect_to conversations_path
    end
  end

  private

  def authorised_conversation?
    Conversation.find(params[:id]).users.include?(@current_user)
  end

end
