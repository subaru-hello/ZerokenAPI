# frozen_string_literal: true

FactoryBot.define do
  factory :diagnosis do
    total_points { 1.5 }
    alcohol_status { 1 }
    user
  end
end
