Rails.application.routes.draw do
  root "pictures#index"
  devise_for :users
  resources :pictures do
    post "search"
    get "favourite", on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
