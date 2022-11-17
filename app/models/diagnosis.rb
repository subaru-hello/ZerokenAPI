# frozen_string_literal: true

class Diagnosis < ApplicationRecord
  belongs_to :user
  enum :alcohol_status, { weak: 0, strong: 1, normal: 2 }
end
