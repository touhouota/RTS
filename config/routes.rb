# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :sessions, only: [:create]
    resources :user_time_separators, only: [:index, :create]
  end

  resources :user_time_separators

  resources :login, only: [:index]
end
