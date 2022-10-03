# frozen_string_literal: true

class CreateLiquors < ActiveRecord::Migration[6.1]
  def change
    create_table :liquors do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :percentage, null: false
      t.integer :amount, null: false
      t.date :expiration_date, null: false

      t.timestamps
    end
  end
end
