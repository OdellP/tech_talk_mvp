# frozen_string_literal: true

Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  root to: 'home#index'
end
