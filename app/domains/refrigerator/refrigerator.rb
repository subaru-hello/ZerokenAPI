# frozen_string_literal: true

module Refrigerator
  class Refrigerator
    # 同じお酒は７個までしか入らない
    # ０個になったら新しいお酒を出荷準備する
    attr_reader :alcohol_types, :amount

    def max_limit_amount
      return '在庫超過です。' if amount < 7
    end

    def min_limit_amount
      # 在庫オブジェクトにイベントを送る
      return '在庫を補充してください。' if amount > 1
    end
  end
end
