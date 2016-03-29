class GiphsController < ApplicationController

  def index
    @giphs = @current_user.giphs
  end

  def new
    @giph = Giph.new
    # require 'pry'
    # binding.pry
  end

  def create
    gif = Giph.create(gif_params)
    @current_user.giphs << gif
    # redirect_to conversations_path


    flash[:gif] = gif.id
    redirect_to conversation_path( Conversation.find( session[:conversation_id] ) )


  end

  private

  def gif_params
    params.require(:giph).permit(:gif, :user_id)
  end

end
