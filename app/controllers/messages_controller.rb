class MessagesController < ApplicationController

  def create
    if params[:source] == 'translate'
      search_text = URI.encode(params[:gif_text])
      gif = HTTParty.get("http://api.giphy.com/v1/gifs/translate?s=#{search_text}&api_key=dc6zaTOxFJmzC")
      message = Message.create( :gif_type => 'giphy', :gif_identifier => gif["data"]["id"], :giphy_downsampled_url => gif["data"]["images"]["fixed_width_downsampled"]["url"])
      @current_user.messages << message
      @current_conversation.messages << message
      redirect_to conversation_path(@current_conversation)
    end
  end
end
