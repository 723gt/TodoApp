Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login' => 'login#new'
  post 'login' => 'login#create'

  get 'signup' => 'signup#new'
  post 'signup' => 'signup#create'
  
  get 'todo' => 'todo#index'
  get 'todo/new' => 'todo#new'
  post 'todo/new' => 'todo#create'

  get 'done' => 'done#index'
  get 'done/new' => 'done#new'
  post 'done/new' => 'done#create'
end
