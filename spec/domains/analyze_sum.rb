# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AnalysisSum, type: :model do
  describe '#execute' do
    let(:answers_strong) do
      {
        answer_1: 1, answer: 3, answer_3: 6, answer_4: 9, answer_5: 14, answer_6: 17, answer_7: 20, answer_8: 23, answer_9: 26, answer_10: 29, answer_11: 32, answer_12: 35, answer_13: 38
      }
    end

    let(:answers_weak) do
      {
        answer_1: 0, answer: 3, answer_3: 7, answer_4: 9, answer_5: 14, answer_6: 17, answer_7: 20, answer_8: 23, answer_9: 26, answer_10: 29, answer_11: 30, answer_12: 35, answer_13: 38
      }
    end

    context '#execute' do
      it do
        expect(AnalysisSum.new(answers_strong).execute).to eq('お酒に強い')
      end

      it do
        expect(AnalysisSum.new(answers_weak).execute).to eq('お酒に弱い')
      end
    end
    context '#total_point' do
      it do
        expect(AnalysisSum.new(answers_strong).total_point).to eq(20.02)
      end

      it do
        expect(AnalysisSum.new(answers_weak).total_point).to eq(-27.099999999999998)
      end
    end
  end
end
