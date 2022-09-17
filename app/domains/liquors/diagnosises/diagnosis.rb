class Diagnosis
#必要なattrを定義
    attr_reader :points
    def initialize(attrs)
        attrs[:]
    end

    def prepare_tast_result(preparers)
        prepares.each do |prepare|
            prepare.prepare_tast_result(self)
        end
    end

    private

    def determine_recommended_liquor
        #酩酊・ほろ酔い・爽快の状態になる上で必要なお酒領を計算し、その量をもつお酒の組み合わせを提供する
    end

    def alcohol_amount
        alcohol_liquid_amount * alcohol_percentage * 0.8
    end

    def alcohol_in_vein

        alcohol_amount / weight * 0.78
    end

    def weight
        
    end

    def determine_alcohol_strongness
        return '酒豪' if replace_answer_to_point > 0
        return '普通' if replace_answer_to_point = 0
        return '下戸' if replace_answer_to_point < 0
    end

    def replace_answer_to_point
        answers.each do |answer|
            result_point = 0
            result_point += tast_point_table[answer][point]
        end
        result_point
    end

    def tast_point_table
        {
            0: {
                point: -10.04,
                choice: "いつも"
            },
            1:  {
                point: 8.95,
                choice: "時々"
            },
            2: {
                point: 5.22,
                choice: "全くない"
            },
            3:   {
                point: -0.43,
                choice: "いつも"
            },
            4:  {
                point: -2.98 ,
                choice: "時々"
            },
            5: {
                point: 1.2,
                choice: "全くない"
            },
            6: {
                point: 3.37,
                choice: "いつも"
            },
            7: {
                point: -3.89,
                choice: "時々"
            },
            8:  {
                point: 0.38,
                choice: "全くない"
            },
            9:  {
                point: -0.58,
                choice: "いつも"
            },
            10:  {
                point: -1.27,
                choice: "時々"
            },
            11: {
                point: 0.25,
                choice: "全くない"
            },
            12: {
                point: 0.31,
                choice: "いつも"
            },
            13:  {
                point: 0.36,
                choice: "時々"
            },
            14: {
                point: -1.03,
                choice: "全くない"
            },
            15: {
                point: 0 ,
                choice: "いつも"
            },
            16:  {
                point: -4.11,
                choice: "時々"
            },
            17:  {
                point: 0.1,
                choice: "全くない"
            },
            18:  {
                point: -0.79,
                choice: "いつも"
            },
            19:  {
                point: 0.07,
                choice: "時々"
            },
            20:  {
                point: 0.01,
                choice: "全くない"
            },
            21: {
                point: 0.83 ,
                choice: "いつも"
            },
            22: {
                point: 0.62,
                choice: "時々"
            },
            23: {
                point: -0.24,
                choice: "全くない"
            },
            24:  {
                point: -3.25,
                choice: "いつも"
            },
            25: {
                point: 1.43,
                choice: "時々"
            },
            26: {
                point: -0.44,
                choice: "全くない"
            },
            27: {
                point: -3.25 ,
                choice: "いつも"
            },
            28: {
                point: 1.43,
                choice: "時々"
            },
            29: {
                point: -0.44,
                choice: "全くない"
            },
            30:  {
                point: -10.07,
                choice: "いつも"
            },
            31:  {
                point: -0.79 ,
                choice: "時々"
            },
            32: {
                point: 10.8,
                choice: "全くない"
            },
            33: {
                point: 8.15,
                choice: "いつも"
            },
            34: {
                point: -2.42,
                choice: "時々"
            },
            35: {
                point: 0.14,
                choice: "全くない"
            },
            36: {
                point: -4.34 ,
                choice: "いつも"
            },
            37: {
                point: 2.69 ,
                choice: "時々"
            },
            38: {
                point: -0.19,
                choice: "全くない"
            },
        }
        end

    #実装する振る舞い
        #TASTの診断結果を計算する
        #計算結果の大小によってお酒の強さを5段階で出力する
        #次の飲み会のモチベーションに応じておすすめのお酒を提案する

    # 13問の合計値が0以下だったら下戸
    # 0以上だったら酒豪
    # 0だったら普通

    #13個の設問✖️3つずつの解答が書かれた配列を用意
    # 13個のポイントを足し合わせる処理
    
# ドメインロジックには、権限(ルール)を書く？
# お酒の強さが〇〇以上だったら強いお酒を提供する

    #アルゴリズムのパブリックインターフェースを定義する
    #ダックタイプで継承させる。
    #Preparer test.exec
    #AlcoholStrongness・NextNomikaiMotivation・TotalTastPoints
end