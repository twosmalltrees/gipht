class PagesController < ApplicationController

  skip_before_action :require_login, :only => [:home]
  before_action :redirect_if_logged_in, :only => [:home]
  layout "pre_sign_in"

  def home
  end

end
