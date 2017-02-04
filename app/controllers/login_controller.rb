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
    
    id = params["login"]["user_id"]
    pass = params["login"]["user_passwd"]
    id_result = User.find_by_user_id(id)
    passwd_reult = User.find_by_user_passwd(pass)
    if id_result.class != NilClass && passwd_reult.class != NilClass
      text = "ok" 
    else
      text = "ng #{id_result.class}  #{passwd_reult.class}"
    end
    render :text => text
  end
end
