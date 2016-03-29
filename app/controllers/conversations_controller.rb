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
      if flash[:gif]
        @gif = Giph.find(flash[:gif])
        @conversation.messages.create :gif_type => "native", :giphy_downsampled_url => @gif.gif.url, :user_id => @current_user.id
      end
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
