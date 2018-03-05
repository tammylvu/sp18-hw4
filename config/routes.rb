Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/users/new', to: 'pages#home'
  post '/users', to: 'users#create'
  get '/cats/new', to: 'cats#new'
  post '/cats', to: 'cats#create'
  get '/todos/new', to: 'todos#new'
  post '/todos', to: 'todos#create'
  get '/todos', to: 'todos#index'
end
