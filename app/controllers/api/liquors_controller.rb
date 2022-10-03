# frozen_string_literal: true

module Api
  class LiquorsController < ApplicationController
    before_action :fetch_liquors, only: %i[index]
    def index
      @alcohol_list = Refrigerator::LiquorRepository.fetch_liquors(@liquors)
      render json: @alcohol_list
    end

    private

    def fetch_liquors
      @liquors = Liquor.all
    end
  end
end
