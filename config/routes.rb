Rails.application.routes.draw do
  root "tweets#index"
  resources :tweets
  
  namespace :api do
    resources :health_check, only: :index
   end
end
