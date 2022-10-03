# frozen_string_literal: true

module Users
  class Weight
    attr_reader :weight

    def initialize(attrs)
      @weight = attrs[:weight]
    end

    private

    def shugo_weight; end

    def hutu_weight; end

    def geko_weight; end
  end
end
