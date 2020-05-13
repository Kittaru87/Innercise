Rails.application.routes.draw do
  get 'home/index'
  
  resources :workouts

  root 'home#index'

end
