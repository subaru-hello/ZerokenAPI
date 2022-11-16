# frozen_string_literal: true

class Liquor < ApplicationRecord
  has_many :categories, through: :category_tags
  has_many :category_tags, dependent: :destroy
end
