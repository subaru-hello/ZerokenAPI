# frozen_string_literal: true

module AlcoholDiagnosis
  class RecommendedLiquor
    def initialize(attr)
      @alcohol_amount = attr[:alcohol_amount]
      @alcohol_percentage = attr[:alcohol_percentage]
    end

    def exec
      determine_recommended_liquor
    end

    private

    # アルコール血中濃度からおすすめのお酒を診断する
    def determine_recommended_liquor
      # 酩酊・ほろ酔い・爽快の状態になる上で必要なお酒領を計算し、その量をもつお酒の組み合わせを提供する
    end

    def required_total_alcohol_amount_for_the_alcohol_in_vein
      # 体重をもとに、血中アルコール濃度(0.41~0.5)になるアルコール総量を計算
    end

    def required_per_alcohol_amount_for_the_alcohol_in_vein
      # レモンサワーから日本酒まで、アルコール量を入れたら何杯か出力される関数を作成
      
    end

    def coma; end

    def dead_drunk; end

    def inebriation; end

    def inebriation_early; end

    def tipsy; end

    def fresh; end

    def refrigerator
      {
        lemon_sour: [
          price:              220,
          alcohol_percentage: 5
        ],
        beer:       [
          price:              300,
          alcohol_percentage: 5
        ]
      }
    end
  end
end
