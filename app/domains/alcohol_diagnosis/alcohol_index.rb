# frozen_string_literal: true

module AlcoholDiagnosis
  class AlcoholIndex
    attr_reader :points

    def initialize(attr)
      @points = attr[:points]
    end

    def exec
      caluculate_alcohol_index(points)
    end

    private

    def caluculate_alcohol_index(points)
      result_point = 0
      points.each do |point|
        result_point += points_for_alcohol_index_caluculation[point - 1]
      end

      result_point
    end

    def points_for_alcohol_index_caluculation
      [
        -10.04,
        8.95,
        5.22,
        -0.43,
        -2.98,
        1.2,
        3.37,
        -3.89,
        0.38,
        -0.58,
        -1.27,
        0.25,
        0.31,
        0.36,
        -1.03,
        0.3,
        -4.11,
        0.1,
        -0.79,
        0.07,
        0.01,
        0.83,
        0.62,
        -0.24,
        -3.25,
        1.43,
        -0.44,
        -3.25,
        1.43,
        -0.44,
        -10.07,
        -0.79,
        10.8,
        8.15,
        -2.42,
        0.14,
        -4.34,
        2.69,
        -0.19
      ]
    end
  end
end
