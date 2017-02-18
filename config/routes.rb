Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'index#index'

  get 'login' => 'login#new'
  post 'login' => 'login#create'
  get 'login/logout' => 'login#logout' , as: :login_logout

  get 'signup' => 'signup#new'
  post 'signup' => 'signup#create'
  
  get 'todo' => 'todo#index'
  get 'todo/new' => 'todo#new'
  post 'todo/new' => 'todo#create'
  get 'todo/:id/cheng' => 'todo#cheng', as: :todo_cheng
  get 'todo/:id/destroy' => 'todo#destroy', as: :todo_destroy
  get 'todo/:id/edit' => 'todo#edit' , as: :todo_edit
  post 'todo/:id/update' => 'todo#update', as: :todo_update

  get 'done' => 'done#index'
  get 'done/new' => 'done#new'
  post 'done/new' => 'done#create'
  get 'done/:id' => 'done#destroy', as: :done_destroy

  get 'doing' => 'doing#index'
  get 'doing/:id/cheng' => 'doing#cheng', as: :doing_cheng
  get 'doing/:id/destroy' => 'doing#destroy', as: :doing_destroy


end
