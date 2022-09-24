# frozen_string_literal: true

module Api
  class AlcoholsController < ApplicationController
    def index
      @alcohols = Alcohols::AlcoholRepository.fetch_alcohols
      render json: @alcohols
    end
  end
end
