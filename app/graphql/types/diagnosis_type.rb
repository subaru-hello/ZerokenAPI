# frozen_string_literal: true

module Types
  class DiagnosisType < Types::BaseObject
    field :id, Int, null: false
    field :weight, String, null: false
    field :alcohol_tolerance, Int, null: false
    field :recommended_liquor, Int, null: false
    field :alcohol_index, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::UserType, null: false
  end
end
