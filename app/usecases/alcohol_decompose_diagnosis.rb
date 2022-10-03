# frozen_string_literal: true

class AlcoholDecomposeDiagnosis
  # Domainオブジェクトに書かれたビジネスロジックを呼び出してユースケースを作成する
  def initialize(attr)
    @user_id = attr[:id]
  end

  # ユーザーの診断結果を保存する処理を書く。
  def execute
    user_alcohol_tolerance if save(attr)
    # 必要なアルコール量を計算する(体重)
    # おすすめのお酒を配列に入れる（アルコール量）
  end

  private

  # 診断結果保存する処理
  def save(attr)
    weight = attr[:weight]

    diagnosis = Diagnose.new(user_id:            @user_id,
                             alcohol_tolerance:  alcohol_tolerance,
                             recommended_liquor: recommended_liquor,
                             weight:             weight,
                             alcohol_index:      alcohol_index)
    diagnosis.save!
  end

  # お酒の強さを計算する処理
  def user_alcohol_tolerance
    diagnosis = AlcoholDiagnosis::Diagnosis.new

    diagnosis.exec
  end

  # 診断結果からポイントを計算する処理
  def alcohol_index
    diagnosis = AlcoholDiagnosis::AlcoholIndex.new
    diagnosis.exec
  end

  # おすすめのお酒を計算する処理

  def recommended_liquor
    recommend_liquor = AlcoholDiagnosis::RecommendedAlcohol.new
    recommend_liquor.exec
  end
end
