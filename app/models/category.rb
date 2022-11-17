# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :category_tags, dependent: :destroy
  has_many :liquors, through: :category_tags
end
