# frozen_string_literal: true

module Alcohols
  class AlcoholRepository
    include ActiveModel::Model

    # DBに対する問合せ処理を書く
    # 　依存関係逆転の法則を使っている
    class << self
      def save(alcohol); end

      def fetch_alcohols
        ActiveRecord::Base.connection.execute('SELECT * FROM alcohols')
      end
    end
  end
end
