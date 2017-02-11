class SignupController < ApplicationController
  def new
    if session[:msg].nil?
      @flag = 0
    else
      @flag = nil
      @msg = session[:msg]
    end
  end
  def create
    @flag = 0
    name = params["signup"]["user_name"]
    id = params["signup"]["user_id"]
    pass = params["signup"]["user_pass"]
    checkpass = params["signup"]["check_pass"]
    rescheck = User.find_by_user_id(id)

    if name.length == 0 || id.length == 0 || pass.length == 0 || checkpass.length ==0
      @flag = nil
      session[:msg] = "*全ての項目を入力してください*"
      cont = 'signup'
      act = 'new'
    elsif pass != checkpass
      @flag = nil
      session[:msg] = "*パスワードが一致しません*"
      cont = 'signup'
      act = 'new'
    elsif rescheck.nil?
      user = User.new(user_id:id,user_name:name,password:pass)
      user.save
      cont = 'todo'
      act = 'index'
    else
      @flag = nil
      session[:msg] = "*このアカウントは登録できません*"
      cont = 'signup'
      act = 'new'
    end
    redirect_to(:controller => cont,:action => act)
  end
end
