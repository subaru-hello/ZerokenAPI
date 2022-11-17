# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'association' do
    it { should have_many(:category_tags) }
    it { should have_many(:liquors).through(:category_tags) }
  end
end
