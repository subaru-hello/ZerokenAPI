# frozen_string_literal: true

class AlcoholShopRepository
  # DBへのアクセス処理を記述するRepositoryのインダーフェース
  # 在庫を増やす
  # 売り切れの管理
  # 消費期限の管理

  def save(alcohol, **data); end
end
