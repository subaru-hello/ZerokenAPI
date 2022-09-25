# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    before_action :fetch_users, only: %i[index]
    def index
      @user_all = Users::UserRepository.fetch_users(@users)
      render json: @user_all
    end

    def fetch_users
      @users = User.all
    end
  end
end
