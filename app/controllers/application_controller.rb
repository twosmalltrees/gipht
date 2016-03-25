class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :fetch_user
  before_action :require_login

private
  def fetch_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end

  def require_login
    unless @current_user.present?
      flash[:error] = "You need to log in to go there..."
      redirect_to root_path unless @current_user.present?
    end
  end

end
