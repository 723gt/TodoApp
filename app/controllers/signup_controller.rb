class SignupController < ApplicationController
  def new

  end
  def create
    name = params["signup"]["user_name"]
    id = params["signup"]["user_id"]
    pass = params["signup"]["user_pass"]
    checkpass = params["signup"]["check_pass"]

    if name.length == 0 || id.length == 0 || pass.length == 0 || checkpass.length ==0
      render :new
    elsif pass != checkpass
      render :new
    end
    rescheck = User.find_by_user_id(id)
    if rescheck.nil?
      user = User.new(user_id:id,user_name:name,user_passwd:pass)
      user.save
      redirect_to(:controller => 'todo',:action => 'index')
    else
      redirect_to(:controller => 'signup',:action => 'new')
    end
  end
end
