# frozen_string_literal: true

# This will guess the User class
FactoryBot.define do
  factory :user do
    uuid { Faker::Internet.uuid }
    sequence(:name) { |n| "test_#{n}" }
    email { Faker::Internet.email }
    liver_capacity { 0 }
  end
end
