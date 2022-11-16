# frozen_string_literal: true

class AnalysisSum
  attr_reader :answer_1, :answer_2

  def initialize(attr)
    @answer_1 = attr[:answer_1]
    @answer_2 = attr[:answer_2]
  end

  def execute
    calculate
  end

  private

  # 値を全て合計する
  def calculate
    total_point = []
    1.upto(2).each do |_i|
      total_point << answer_ # {i}
    end
    total_point.inject(0) { |sum, num| sum += num }
  end

  # 回答を値に変換する
  def sum_answers
    array = []

    point = points_for_alcohol_index_caluculation[i]
    array.push(point)
  end

  # 各回答の値に対応する数値
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
      0,
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
