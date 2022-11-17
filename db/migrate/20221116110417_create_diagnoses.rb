class CreateDiagnoses < ActiveRecord::Migration[6.1]
  def change
    create_table :diagnoses do |t|
      t.float :total_points, null: false
      t.integer :alcohol_status, null: false, default: 0

      t.timestamps
    end  
    end
end
