# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :workouts do
    resources :likes
  end

  post '/profile/:body_id' => 'accounts#show_liked_video', as: :profile_like
  get '/profile/:username' => 'accounts#profile', as: :profile
  get '/terms_of_service' => 'home#terms_of_service'
  get '/about' => 'home#about'
  root 'home#index'
end
