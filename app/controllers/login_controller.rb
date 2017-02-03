class LoginController < ApplicationController
  @user = User.new
  def new
  end

  def create
=begin
    if params[:user_id] == user.user_id && params[:user_passwd] == user.user_passwd
      rendere '/'
    else
      render '/'
    end
=end
    id = params["login"]["user_id"]
    pass = params["login"]["user_passws"]
    render :text => id
  end
end
