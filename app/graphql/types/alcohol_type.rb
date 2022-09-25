# frozen_string_literal: true

module Types
  class AlcoholType < Types::BaseObject
    field :id, Int, null: false
    field :name, String, null: false
    field :price, Int, null: false
    field :percentage, String, null: false
    field :amount, Int, null: false
    field :expiration_date, GraphQL::Types::ISO8601DateTime, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
