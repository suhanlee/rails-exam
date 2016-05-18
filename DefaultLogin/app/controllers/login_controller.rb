class LoginController < ApplicationController
  def index
    @user = User.new
  end

  def try
    name = user_params['name']
    password = user_params['password']
    user = User.find_by(:name => name)
    if user != nil && user.password == password
      session[:user_name] = user.name
      session[:user_password] = user.password

      redirect_to :root
    else
      redirect_to :back
    end

  end

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
