class TodoController < ApplicationController
  def index
    if session[:user_id] == nil
      #redirect_to(:controller => 'login',:action => 'new')
      redirect_to('/')
    end
    @name = session[:user_name]
    @todo = Todo.where(:user_id => session[:user_id])
  end
  def new
  end
  def create
    content = params["newtask"]["content"]
    memo = params["newtask"]["memo"]
    id = session[:user_id]
    @todo = Todo.new(:user_id => id,:content => content,:memo => memo,:tasktype => 0)
    @todo.save
    redirect_to(:contorller => 'todo',:action => 'index')
  end
end
