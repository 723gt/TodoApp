class DoneController < ApplicationController
  def index
    if session[:user_id].nil?
      redirect_to('/')
    end
    @user = session[:user_name]
    @todo = Todo.where("(user_id = ?) and (tasktype = ?)",session[:user_id],2)
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.update(:tasktype => 5)
    redirect_to(:controller => 'done',:action => 'index')
  end
end
