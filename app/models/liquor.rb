# frozen_string_literal: true

class Liquor < ApplicationRecord
  has_many :category_tags, dependent: :destroy
  has_many :categories, through: :category_tags
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
