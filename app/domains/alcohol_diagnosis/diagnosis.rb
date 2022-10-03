# frozen_string_literal: true

module AlcoholDiagnosis
  class Diagnosis
    # 必要なattrを定義
    attr_reader :points

    # controller からインプットが入ってきて、そこからポイントと体重を抽出
    def initialize(params: default_params_array)
      @points = params[:points]
      @weight = params[:weight]
    end
    # def prepare_tast_result(_preparers)
    #   prepares.each do |prepare|
    #     prepare.prepare_tast_result(self)
    #   end
    # end

    # お酒の強さを返す expected one of these high,middle,low
    def exec
      determine_alcohol_strongness
    end

    private

    def determine_alcohol_strongness
      alcohol_decompose = AlcoholDianosis::AlcoholDecompose.new
      alcohol_decompose.exec
    end

    def alcohol_amount
      alcohol_liquid_amount * alcohol_percentage * 0.8
    end

    def weight; end

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
