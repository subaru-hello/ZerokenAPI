# frozen_string_literal: true

module AlcoholDiagnosis
  class AlcoholDecompose
    def initialize(attr)
      @total_points = attr[:total_points]
    end

    def exec
      determine_alcohol_strongness(total_points)
    end

    private

    def determine_alcohol_strongness(total_points)
      result_points = total_points
      return 'low' if result_points.positive?
      return 'middle' if result_points.zero?
      return 'high' if result_points.negative?
    end
  end
end
