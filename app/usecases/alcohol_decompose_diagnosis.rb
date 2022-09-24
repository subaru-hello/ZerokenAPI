# frozen_string_literal: true

class AlcoholDecomposeDiagnosis
  # Domainオブジェクトに書かれたビジネスロジックを呼び出してユースケースを作成する
  def initialize(attr)
    @user_id = attr[:id]
  end

  def tokyo_univ_alcohol_sindan_test
    入力値をポイントに変換する(ユーザーが入力した答案)
    ポイントを合計する（ポイント）
    ポイントによってお酒の強さを5段階で評価する（ポイント）
    お酒の強さを保存する
    check_alcohol_decompose_power
  end

  # ユーザーの診断結果を保存する処理を書く。
  def execute
    user_alcohol_tolerance
    # 必要なアルコール量を計算する(体重)
    # おすすめのお酒を配列に入れる（アルコール量）
  end

  private

  def save(attr)
    @user_id = user_id
    alcohol_tolerance = user_alcohol_tolerance
    weight = attr[:weight]
    recommended_liquor = attr[:recommended_liquor]
    alcohol_index = -19

    diagnosis = Diagnose.new(user_id: @user_id, alcohol_tolerance: alcohol_tolerance, recommended_liquor: recommended_liquor, weight: weight, alcohol_index: alcohol_index)
    diagnosis.save!
  end

  def user_alcohol_tolerance
    diagnosis = AlcoholDiagnosis::Diagnosis.new
    diagnosis.alcohol_strongness
  end
end
