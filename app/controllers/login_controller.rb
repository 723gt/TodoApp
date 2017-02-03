class LoginController < ApplicationController
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
    data = params[:user_data].inspect
    #id = data[:user_id]
    
   # render :text => params.inspect
    render :text => data
  end
end
