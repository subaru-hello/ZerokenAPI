# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::Liquors', type: :request do
  describe 'GET /index' do
    context 'success' do
      it do
        get api_liquors_path
        expect(response).to have_http_status(200)
      end
    end
  end
end
