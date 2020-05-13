Rails.application.routes.draw do
  get 'home/index'
  
  resources :workouts

  # get '/workouts/arms'

  root 'home#index'

end
