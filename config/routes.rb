Rails.application.routes.draw do
  get 'home/index'
   
  get 'workouts/arms'
  
  root 'home#index'

end
