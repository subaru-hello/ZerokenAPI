# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::Users', type: :request do
  describe 'GET /api/users' do
    it do
      get api_users_path
      expect(response).to have_http_status(200)
    end
  end
end
