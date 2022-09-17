class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :uuid, null: false
      t.string :name, null: false
      t.integer :liver_capacity, default: 0

      t.timestamps
      t.index :uuid
    end
  end
end
