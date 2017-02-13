class TodoController < ApplicationController
  def index
    if session[:user_id] == nil
      #redirect_to(:controller => 'login',:action => 'new')
      redirect_to('/')
    end
    @name = session[:user_name]
    @todo = Todo.where("(user_id = ?) and (tasktype = ?)", session[:user_id],0)
  end
  
  def new
  end

  def create
    content = params["newtask"]["content"]
    memo = params["newtask"]["memo"]
    if content.length == 0 || memo.length == 0
      act = 'new'
    else
      id = session[:user_id]
      @todo = Todo.new(:user_id => id,:content => content,:memo => memo,:tasktype => 0)
      @todo.save
      act = 'index' 
    end
    redirect_to(:contorller => 'todo',:action => act)
  end

  def cheng
    todo = Todo.find(params[:id])
    todo.update(:tasktype => 1)
    redirect_to(:controller => 'todo',:action => 'index') 
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.update(:tasktype => 5)
    redirect_to(:controller => 'todo',:action => 'index')
  end
end
