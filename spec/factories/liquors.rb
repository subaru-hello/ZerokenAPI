# frozen_string_literal: true

FactoryBot.define do
  factory :liquor do
    name { 'MyString' }
    amount { 1 }
    percentage { 1 }
    catch_copy { 'MyString' }
    image_url { 'MyString' }
    site_url { 'MyString' }
  end
end
