class ConversationsController < ApplicationController

  def new
    @conversation = Conversation.new
    @contacts_collection = []
    @current_user.contacts.each do |contact|
      contact_option = [User.find(contact.user_id).username, contact.user_id]
      @contacts_collection << contact_option
    end
  end

  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.users << @current_user

    params[:conversation][:users].each do |user|
      @conversation.users << User.find(user) if user.present?
    end

    if @conversation.save
      redirect_to conversation_path(@conversation)
    else
      redirect_to conversations_path
    end
  end

  def index
    @conversations = @current_user.conversations
  end

  def edit
    @conversation = Conversation.find(params[:id])
    @contacts_collection = []
    @current_user.contacts.each do |contact|
      contact_option = [User.find(contact.user_id).username, contact.user_id]
      @contacts_collection << contact_option
    end
  end

  def show
    if authorised_conversation?
      @conversation = Conversation.find(params[:id])
      @conversation_id = @conversation.id

      page_limit = 10
      if params[:page].present?
        number_to_offset = params[:page].to_i * page_limit
      else
        number_to_offset = 0
      end

      session[:conversation_id] = @conversation.id

      # CHANGE VALUE IN OFFSET FOR ENDLESS SCROLLING
      @messages = @conversation.messages.order(id: :desc).limit(page_limit).offset(number_to_offset).reverse

      if request.xhr?
        render :partial => 'messages', :layout => false
      end

    else
      redirect_to conversations_path
    end
  end

  private

  def authorised_conversation?
    Conversation.find(params[:id]).users.include?(@current_user)
  end

  def conversation_params
    params.require(:conversation).permit(:users, :name)

  end


end
