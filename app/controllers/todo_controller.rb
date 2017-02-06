class TodoController < ApplicationController
  def index
    if session[:user_id] == nil
      redirect_to(:controller => 'login',:action => 'new')
    end
    @name = session[:user_name] + "'s"
    @todo = Todo.all
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
