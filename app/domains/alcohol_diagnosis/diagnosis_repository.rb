# frozen_string_literal: true

module AlcoholDiagnosis
  class DiagnosisRepository < BaseDomain
    # DBへのアクセス処理を記述するRepositoryのインターフェース
    def fetch_tast_point
      ActiveRecord::Base.connection.execute('SELECT d.alcohol_index FROM diagnoses;')
    end
  end
end
