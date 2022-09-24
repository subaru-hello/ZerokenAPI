# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::Alcohols', type: :request do
  describe 'GET /index' do
    context 'success' do
      it do
        get api_alcohols_path
        expect(response).to have_http_status(200)
      end
    end
  end
end
