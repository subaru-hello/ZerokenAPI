# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Analysis, type: :model do
  describe 'association' do
    it { should belong_to(:user) }
  end
end
