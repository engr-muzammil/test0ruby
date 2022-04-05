Rails.application.routes.draw do
  
  

  root "pictures#index"
  devise_for :users
  resources :pictures do
    post "search"
    get "favourite", on: :member
  end

  get "welcome/index"

  # route where any visitor require the helloWorldJob to be triggered
  post "welcome/trigger_job"

  # where visitor are redirected once job has been called
  get "other/job_done"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
