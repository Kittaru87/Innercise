# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :workouts

  get 'home/profile'
  get 'home/terms_of_service'
  get 'home/about'
  root 'home#index'
end
