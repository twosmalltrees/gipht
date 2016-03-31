class GiphsController < ApplicationController

  def index
    @giphs = @current_user.giphs
  end

  def new
    @giph = Giph.new
    @origin = params[:origin]
    # require 'pry'
    # binding.pry
  end

  def create
    newGif = Giph.create(gif_params)
    @current_user.giphs << newGif

    if params[:require_send] == "true"
        @current_conversation.messages.create :gif_type => "native", :gif_identifier => newGif.id, :giphy_downsampled_url => newGif.gif.url, :user_id => @current_user.id
        @current_conversation.touch
        redirect_to conversation_path(@current_conversation)
    else
        redirect_to giphs_path
    end
  end

  def select
    @giphs = @current_user.giphs
  end

  private

  def gif_params
    params.require(:giph).permit(:gif, :user_id)
  end

end
