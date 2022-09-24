# frozen_string_literal: true

class Diagnosis < ApplicationRecord
  belongs_to :user
  enum alcohol_tolerance: { low: 0, middle: 1, high: 2 }
  enum recommended_liquor: { bitter: 0, fresh: 1, sugary: 2, sour: 3, beer: 4 }
end
