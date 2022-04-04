Rails.application.routes.draw do
  root "pictures#index"
  devise_for :users
  resources :pictures
  post "pictures/search", to: "pictures#search"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
