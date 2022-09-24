# frozen_string_literal: true

module AlcoholDiagnosis
  class Diagnosis
    # 必要なattrを定義
    attr_reader :points

    def initialize(params: default_params_array)
      @points = params[:points]
      @weight = params[:weight]
    end
    # def prepare_tast_result(_preparers)
    #   prepares.each do |prepare|
    #     prepare.prepare_tast_result(self)
    #   end
    # end

    def alcohol_strongness
      determine_alcohol_strongness
    end

    private

    def determine_recommended_liquor
      # 酩酊・ほろ酔い・爽快の状態になる上で必要なお酒領を計算し、その量をもつお酒の組み合わせを提供する
    end

    def alcohol_amount
      alcohol_liquid_amount * alcohol_percentage * 0.8
    end

    def weight; end

    def determine_alcohol_strongness
      result_points = replace_answer_to_point(points)
      return 'low' if result_points.positive?
      return 'middle' if result_points.zero?
      return 'high' if result_points.negative?
    end

    def replace_answer_to_point(points)
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

    def default_params_array
      {
        points: [1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37],
        weight: 60
      }
    end

    # 実装する振る舞い
    # TASTの診断結果を計算する
    # 計算結果の大小によってお酒の強さを5段階で出力する
    # 次の飲み会のモチベーションに応じておすすめのお酒を提案する

    # 13問の合計値が0以下だったら下戸
    # 0以上だったら酒豪
    # 0だったら普通

    # 13個の設問✖️3つずつの解答が書かれた配列を用意
    # 13個のポイントを足し合わせる処理

    # ドメインロジックには、権限(ルール)を書く？
    # お酒の強さが〇〇以上だったら強いお酒を提供する

    # アルゴリズムのパブリックインターフェースを定義する
    # ダックタイプで継承させる。
    # Preparer test.exec
    # AlcoholStrongness・NextNomikaiMotivation・TotalTastPoints
  end
end
