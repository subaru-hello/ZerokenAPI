# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end
  end
end
