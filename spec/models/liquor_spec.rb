# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Liquor, type: :model do
  describe 'association' do
    it { should have_many(:categories).through(:category_tags) }
    it { should have_many(:category_tags) }
    it { should have_many(:favorites) }
    it { should have_many(:users).through(:favorites) }
  end
end
