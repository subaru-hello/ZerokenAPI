# frozen_string_literal: true

module Users
  class UserRepository
    include ActiveModel::Model
    class << self
      def save(attr); end

      def fetch_users(users)
        # ActiveRecord::Base.connection.execute('SELECT * FROM users')
        users
      end
    end
  end
end
