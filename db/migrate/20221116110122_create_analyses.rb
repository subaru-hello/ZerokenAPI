class CreateAnalyses < ActiveRecord::Migration[6.1]
  def change
    create_table :analyses do |t|
      t.integer :answer_1, null: false
      t.integer :answer_2, null: false
      t.integer :answer_3, null: false
      t.integer :answer_4, null: false
      t.integer :answer_5, null: false
      t.integer :answer_6, null: false
      t.integer :answer_7, null: false
      t.integer :answer_8, null: false
      t.integer :answer_9, null: false
      t.integer :answer_10, null: false
      t.integer :answer_11, null: false
      t.integer :answer_12, null: false
      t.integer :answer_13, null: false

      t.timestamps
    end
  end
end
