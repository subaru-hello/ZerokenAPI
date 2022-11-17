# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'MyString' }
    email { 1 }
    password { 'password' }
  end
end
