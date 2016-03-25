class PagesController < ApplicationController

  skip_before_action :require_login, :only => [:home]
  layout "pre_sign_in"

  def home
  end

end
