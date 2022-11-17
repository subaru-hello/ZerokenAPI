# frozen_string_literal: true

class AnalysisSum
  attr_reader :answers

  def initialize(attr)
    @answers = attr
  end

  # お酒の強さを診断する
  def execute
    total_point = sum_answers(answers)
    calculate(total_point)
  end

  # alcohol_indexを取得する
  def total_point
    sum_answers(answers)
  end

  private

  # 値を全て合計する
  def calculate(total_point)
    if total_point.negative?
      'お酒に弱い'
    elsif total_point.positive?
      'お酒に強い'
    else
      '測定不能'
    end
  end

  # 回答を値に変換する
  def sum_answers(answer_arrs)
    array = []
    answer_arrs.each_value do |answer|
      point = points_for_alcohol_index_caluculation[answer]
      array.push(point)
    end
    array.sum
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
