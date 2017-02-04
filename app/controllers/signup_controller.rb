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

    user = User.new(user_id:id,user_name:name,user_passwd:pass)
    user.save
   render :test

    #render :text => name.length

  end
end
