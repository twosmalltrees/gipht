class GiphsController < ApplicationController

  def index
    @giphs = @current_user.giphs
  end

  def new
    @giph = Giph.new
  end

  def create
    gif = Giph.create(gif_params)
    @current_user.giphs << gif
    redirect_to conversations_path
  end

  private

  def gif_params
    params.require(:giph).permit(:gif, :user_id)
  end

end
