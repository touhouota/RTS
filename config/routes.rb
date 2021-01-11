# frozen_string_literal: true

Rails.application.routes.draw do
  get "/sessions", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :sessions, only: [:create, :delete]
    resources :user_time_separators, only: [:index, :create]
  end

  resources :user_time_separators

  resources :login, only: [:index]
end
