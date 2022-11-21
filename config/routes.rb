Rails.application.routes.draw do
  # resources :articles
  resources :blog_apps
  resources :comics
  # get 'blog_apps'
  get 'comics' => 'comics#index'
  get 'comics/new' => 'comics#new', as: 'comic_new'
  post 'comics/create' => 'comics#create', as: 'create_comic'
  get 'comics/:id/edit', to: 'comics#edit', as: 'comic_edit'
  get 'comics/:id' => 'comics#show', as: 'comic_show'
  patch 'comics/:id', to: 'comics#update'
  get 'home/index'
  # get '/comics' => 'comics#index'
  # get '/comics' => 'comics#new', as 'new_comic'
  # post '/comics' => 'comics#create', as 'create_comic'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "index#index"
  # root "blog_apps#index"
  # root "comics#index"
end
