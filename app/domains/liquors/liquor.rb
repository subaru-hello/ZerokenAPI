# frozen_string_literal: true

class Liquor
  attr_reader :alcohol_percentage, :alcohol_amount, :alcohol_in_vein, :name, :alcohol_types

  def initialize(attr)
    @liquor_content = attr[:alcohol_percentage]
    @alcohol_amount = attr[:alcohol_amount]
    @weight = weight
    @name = attr[:name]
    @alcohol_types = attr[:alcohol_types]
  end

  # お酒に関するルールを書く
  # 蒸留酒は何度以上で熟成されたお酒
  # ビールは何度以上で何日以上寝かせたもの
  # レモンサワーは〇〇と〇〇を掛け合わせたもの
  # アルコール量を〇〇以上飲むと泥酔する⇨酔いの度合いを持たせよう。
  private

  def motivation_for_nomikai
    params[:motivation_for_nomikai]
  end

  def alcohol_in_vein_calculation
    pure_alcohol_amount / weight * 0.7
  end

  def pure_alcohol_amount
    # 容量✖️度数✖️0.8 = アルコール量
    alcohol_content * alcohol_amount * 0.8
  end

  def hangover_criteria; end

  def heavy_drunk
    alcohol_amount > 10
  end

  def drunk
    alcohol_amount > 10
  end

  def horoyoi
    alcohol_amount > 10
  end
  # 実装したいメッセージ
  # アルコール量を計算
  # 血中アルコール濃度を計算
end
