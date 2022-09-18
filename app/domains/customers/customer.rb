# frozen_string_literal: true

class Customer
  attr_reader :motivation, :weight, :name, :email

  # 使用するデータを定義する
  def initialize(_attrs)
    @weight = weight
    @motivation = motivation
  end

  def weight
    weight ||= Weight.new
  end

  # 実装したい振る舞い
  # テストの診断をする
  # 新規登録・ログインをする
end
