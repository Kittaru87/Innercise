# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get '/profile/:username' => 'accounts#profile', as: :profile

  resources :workouts do
    resources :likes
  end

  put '/profile/:body_id' => 'likes#show_liked_video', as: :profile_like
  get '/terms_of_service' => 'home#terms_of_service'
  get '/about' => 'home#about'
  root 'home#index'
end
