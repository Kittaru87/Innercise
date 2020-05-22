# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'

  resources :workouts

  get 'home/about', to: 'home#about'

  root 'home#index'
end
