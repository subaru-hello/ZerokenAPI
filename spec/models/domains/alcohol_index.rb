# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AlcoholDiagnosis::AlcoholIndex, type: :model do
  describe '#exec' do
    let(attr_1) do
      {
        points: [1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37]
      }
    end
    let(attr_2) do
      {
        points: [2, 5, 8, 11, 14, 17, 20, 23, 26, 29, 32, 35, 37]
      }
    end
    let(attr_3) do
      {
        points: [3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 37, 38]
      }
    end
    let(alcohol_index_1) { AlcoholDiagnosis::AlcoholIndex.new(attr_1).exec }
    let(alcohol_index_2) { AlcoholDiagnosis::AlcoholIndex.new(attr_2).exec }
    let(alcohol_index_3) { AlcoholDiagnosis::AlcoholIndex.new(attr_3).exec }

    it do
      expect(alcohol_index_1).to eq(-19.79)
    end

    it do
      expect(alcohol_index_2).to eq(-6.940000000000001)
    end

    it do
      expect(alcohol_index_3).to eq(14.159999999999998)
    end
  end
end
