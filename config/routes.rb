# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    resources :users, only: %i[index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
