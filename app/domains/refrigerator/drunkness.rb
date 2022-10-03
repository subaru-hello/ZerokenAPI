# frozen_string_literal: true

module Refrigerator
  class Drunkness
    attr_reader :alcohol_amount

    def initialize(attr)
      @alcohol_amount = attr[:alcohol_amount]
    end

    def heavy_drunk
      alcohol_amount > 10
    end

    def drunk
      alcohol_amount < 5
    end

    def horoyoi
      alcohol_amount < 10
    end
  end
end
