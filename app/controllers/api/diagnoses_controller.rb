# frozen_string_literal: true

module Api
  class DiagnosesController < ApplicationController
    def index
    #ユーザーに紐づく診断結果を全て取得する
    end

    def create
    #入力値をユースケースに流す（総合ポイント、体重）
    diagnosis =  AlcoholDiagnosis::Diagnosis.new(diagnosis_params)
    #saveできるインターフェースをもつオブジェクトに注入する
    AlcoholDecomposeDiagnosis(diagnosis)
    if diagnosis.save
      diagnosis
    else
      p 'error'
      render diagnosis
    end

    private

    def diagnosis_params
      strong_parameter(weight:, points:)
    end
  end
end
