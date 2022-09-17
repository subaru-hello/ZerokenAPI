class CreateAlcohols < ActiveRecord::Migration[6.1]
  def change
    create_table :alcohols do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :percentage, null: false
      t.integer :amount, null: false
      t.date :expiration_date, null: false

      t.timestamps
    end
  end
end
