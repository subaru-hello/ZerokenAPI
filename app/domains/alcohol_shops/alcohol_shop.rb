# frozen_string_literal: true

class AlcoholShop
  # ２本買うと100円分のおつまみ無料
  def sell_alcohols
    tumami = 0
    tumami += 1 if unit <= 2
  end

  def buy_two_one_otsumami(unit)
    return tumami = 1 if unit <= 2
  end
end
