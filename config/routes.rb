# frozen_string_literal: true

Rails.application.routes.draw do
  post '/graphql', to: 'graphql#execute'

  if Rails.env.development? # rubocop:disable Style/IfUnlessModifier
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
  devise_for :users

  root to: 'welcome#index'

  namespace :api do
    resources :users, only: %i[index]
    resources :alcohols, only: %i[index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
