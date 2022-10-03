# frozen_string_literal: true

module Refrigerator
  class Liquor
    attr_reader :name, :alcohol_types

    def initialize(attr)
      @name = attr[:name]
      @alcohol_types = attr[:alcohol_types]
    end

    def extract
      select_adequate_liquor
    end

    # 共通で持っている
    # アルコール量
    # [name,1750,2250,4500]

    def sort_recommended_liquor(*_liquors)
      liquor_names.each do |liquor|
        array.push(Liquor.new(name: liquor).pure_alcohol_amount)
      end
      array
    end

    # 名前
    def liquor_names
      []
    end
    # 値段
    # unit

    private

    attr_reader :alcohol_percentage, :alcohol_amount

    def container; end

    def select_adequate_liquor
      # 適したお酒を抽出し、そのアルコール量を出す
      @alcohol = Alcohol.select
    end

    def alcohol_in_vein
      pure_alcohol_amount / vein_endurance
    end

    def vein_endurance
      biodistribution_index * user_weight
    end

    def pure_alcohol_amount
      # 容量✖️度数✖️0.8 = アルコール量
      alcohol_amount * alcohol_percentage * alcohol_ratio
    end

    def alcohol_ratio
      0.8
    end

    def biodistribution_index
      833
    end

    def unit
      @unit ||= UnitAlcohol.new
    end

    def weight
      @weight ||= Users::Weight.new
    end
  end
end
