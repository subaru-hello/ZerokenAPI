# frozen_string_literal: true

class AlcoholDecomposeDiagnosis
  # Domainオブジェクトに書かれたビジネスロジックを呼び出してユースケースを作成する
  def tokyo_univ_alcohol_sindan_test
    入力値をポイントに変換する(ユーザーが入力した答案)
    ポイントを合計する（ポイント）
    ポイントによってお酒の強さを5段階で評価する（ポイント）
    お酒の強さを保存する
    check_alcohol_decompose_power
  end

  def determine_recommended_liquor
    必要なアルコール量を計算する(体重)
    おすすめのお酒を配列に入れる（アルコール量）
  end
end
