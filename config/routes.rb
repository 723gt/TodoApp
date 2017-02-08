Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login' => 'login#new'
  post 'login' => 'login#create'
  get 'login/logout' => 'login#logout' , as: :login_logout

  get 'signup' => 'signup#new'
  post 'signup' => 'signup#create'
  
  get 'todo' => 'todo#index'
  get 'todo/new' => 'todo#new'
  post 'todo/new' => 'todo#create'
  get 'todo/:id' => 'todo#cheng', as: :todo_cheng
  get 'todo/:id' => 'todo#destroy', as: :todo_destroy

  get 'done' => 'done#index'
  get 'done/new' => 'done#new'
  post 'done/new' => 'done#create'
  get 'done/:id' => 'done#destroy', as: :done_destroy
end
