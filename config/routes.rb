Rails.application.routes.draw do
  get 'comics/new'
  get 'comics/create'
  resources :blog_apps
  # resources :articles
  get 'home/index'
  # get '/comics' => 'comics#index'
  # get '/comics' => 'comics#new', as 'new_comic'
  # post '/comics' => 'comics#create', as 'create_comic'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blog_apps#index"
end
