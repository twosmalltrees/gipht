class UsersController < ApplicationController

  skip_before_action :require_login, :only => [:new, :create]
  before_action :redirect_if_logged_in, :only => [:new]
  layout "pre_sign_in", :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to root_path
  end

  # Index method? Not yet.

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :avatar)
  end

end
