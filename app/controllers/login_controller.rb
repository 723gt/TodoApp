class LoginController < ApplicationController
  def new
  end

  def create
    id = params["login"]["user_id"]
    pass = params["login"]["user_passwd"]
    id_result = User.find_by_user_id(id)
    passwd_reult = User.find_by_user_passwd(pass)
    if id_result.class != NilClass && passwd_reult.class != NilClass
      session[:user_id] = id
      res = User.where(:user_id => id)
      name = res[0]["user_name"]
      session[:user_name] = name
      redirect_to(:controller => 'todo')
    else
      render 'login/new'
    end
  end

  def logout
    session[:user_id] = session[:user_name] = nil
    redirect_to('/')
  end
end
