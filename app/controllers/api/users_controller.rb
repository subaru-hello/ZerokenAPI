# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    def index
      @users = Users::UserRepository.fetch_users
      render json: @users
    end
  end
end
