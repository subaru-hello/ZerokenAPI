# frozen_string_literal: true

module Refrigerator
  class LiquorRepository
    include ActiveModel::Model

    # DBに対する問合せ処理を書く
    # 　依存関係逆転の法則を使っている
    class << self
      def save(alcohol); end

      def fetch_liquors(alcohol)
        #  ActiveRecord::Base.connection.execute('SELECT a.id , a.name,a.price, a.percentage, a.amount, a.expiration_date FROM alcohols a')
        alcohol
      end
    end
  end
end
