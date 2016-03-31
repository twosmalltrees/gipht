class SessionController < ApplicationController

  skip_before_action :require_login
  before_action :redirect_if_logged_in, :only => [:new]
  layout "pre_sign_in"

  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to conversations_path
    else
      flash[:error] = "Login failed, please check yo details and try again."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
