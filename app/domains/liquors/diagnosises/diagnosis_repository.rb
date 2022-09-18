# frozen_string_literal: true

class DiagnosisRepository
  # DBへのアクセス処理を記述するRepositoryのインダーフェース
  def fetch_tast_point_table(points)
    points.each do |point|
      TastPoints.find(point)
    end
  end
end
