class DoingController < ApplicationController
  def index
    if session[:user_id].nil?
      redirect_to('/')
    end
    @name = session[:user_name]
    @todo = Todo.where("(user_id = ?) and (tasktype = ?)",session[:user_id],1)
  end

  def cheng
    todo = Todo.find(params[:id])
    todo.update(:tasktype => 2)
    redirect_to(:controller => 'doing',:action => 'index')
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.update(:tasktype => 5)
    redirect_to(:controller => 'doing',:action => 'index')
  end

end
