# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'

  resources :workouts

  get '/workouts/arms', to: 'workouts#show(:id)'

  root 'home#index'
end
