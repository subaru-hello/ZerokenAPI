class AlcoholShop
    #２本買うと100円分のおつまみ無料
    def sell_alcohols()
        tumami = 0
        if unit <= 2
            tumami += 1
        end
    end

    def buy_two_one_otsumami(unit)
        return tumami = 1 if unit <= 2
    end
end