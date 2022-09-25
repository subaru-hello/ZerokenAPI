# frozen_string_literal: true

module Api
  class AlcoholsController < ApplicationController
    before_action :fetch_alcohols, only: %i[index]
    def index
      @alcohol_list = Alcohols::AlcoholRepository.fetch_alcohols(@alcohols)
      render json: @alcohol_list
    end

    private

    def fetch_alcohols
      @alcohols = Alcohol.all
    end
  end
end
