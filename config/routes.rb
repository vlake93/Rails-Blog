Rails.application.routes.draw do
  resources :vics
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # match "/home/vic" => "home#vic", :via => :get
end
