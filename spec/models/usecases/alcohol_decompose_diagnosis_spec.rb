# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AlcoholDecomposeDiagnosis, type: :model do
  describe '#execute' do
    let(:user) { FactoryBot.build(:user) }
    let(:alcohol_decompose) { AlcoholDecomposeDiagnosis.new(user).exec }

    it do
      expect(alcohol_decompose).to eq('high')
    end
  end
end
