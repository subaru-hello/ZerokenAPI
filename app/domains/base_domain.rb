# frozen_string_literal: true

class BaseDomain
  include ActiveModel::Model

  # サービスを利用するクラスが呼び出すメソッド
  def provide
    raise_validation_error if invalid?
    perform
  end

  private

  # サービスの処理（パラメータが正常な場合のみ実行されます）
  # 各サービスクラスではこのメソッドをoverrideして機能を実装します
  def perform
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  # バリデーションエラー時、ActiveRecord::RecordInvalidを投げるためのメソッド
  def raise_validation_error
    raise ActiveRecord::RecordInvalid, self
  end
end
