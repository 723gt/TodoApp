class LoginController < ApplicationController
  def new
  end

  def create
    id = params["login"]["user_id"]
    pass = params["login"]["user_passwd"]
    id_result = User.find_by_user_id(id)
    passwd_reult = User.find_by_user_passwd(pass)
 
    if id.length == 0 || pass.length == 0
      cont = 'login'
      act = 'new'
    elsif id_result.class != NilClass && passwd_reult.class != NilClass
      session[:user_id] = id
      res = User.where(:user_id => id)
      name = res[0]["user_name"]
      session[:user_name] = name
      cont = 'todo'
      act = 'index'
    else
      cont = 'login'
      act = 'new'
    end
    redirect_to(:controller => cont,:action => act)
  end

  def logout
    session[:user_id] = session[:user_name] = nil
    redirect_to('/')
  end
end
