# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :liquors, through: :category_tags
  has_many :category_tags, dependent: :destroy
end
