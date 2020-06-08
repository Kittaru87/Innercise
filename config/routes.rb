# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get '/profile/:username' => 'accounts#profile', as: :profile

  resources :workouts do
    resources :likes
  end

  get '/profile/:body_id' => 'accounts#show', as: :profile_like_show
  put '/profile/:body_id' => 'accounts#show_liked_video', as: :profile_like
  get '/terms_of_service' => 'home#terms_of_service'
  get '/about' => 'home#about'
  root 'home#index'
end
