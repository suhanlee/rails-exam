class HomeController < ApplicationController
  before_action :check_login

  def index
  end

  def check_login
    if session[:user_name] && session[:user_password]
    else
      redirect_to login_url
    end
  end
end
