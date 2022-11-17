# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'association' do
    it { should have_many(:analyses) }
    it { should have_many(:diagnoses) }
    it { should have_many(:favorites) }
    it { should have_many(:liquors).through(:favorites) }
  end
end
