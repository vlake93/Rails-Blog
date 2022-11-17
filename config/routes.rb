Rails.application.routes.draw do
  resources :blog_apps
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blog_apps#index"
end
