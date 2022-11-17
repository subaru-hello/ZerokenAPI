# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategoryTag, type: :model do
  describe 'association' do
    it { should belong_to(:category) }
    it { should belong_to(:liquor) }
  end
end
