# frozen_string_literal: true

module Refrigerator
  class UnitAlcohol
    def self.unit(unit_type)
      unit_type.unit(self)
    end

    private

    def kan
      350
    end

    def strong_kan
      500
    end

    def bin
      350
    end

    def bottle; end
  end
end
