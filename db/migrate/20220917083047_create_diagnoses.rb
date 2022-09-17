class CreateDiagnoses < ActiveRecord::Migration[6.1]
  def change
    create_table :diagnoses do |t|
      t.integer :alcohol_tolerance, default: 0
      t.integer :recommended_liquor, default: 0
      t.string :alcohol_index, null: false

      t.timestamps
    end
  end
end
