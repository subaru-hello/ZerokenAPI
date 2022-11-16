class CreateCategoryTags < ActiveRecord::Migration[6.1]
  def change
    create_table :category_tags do |t|
      t.references :category, null: false, foreign_key: true
      t.references :liquor, null: false, foreign_key: true

      t.timestamps
    end  
    add_index :category_tags, [:category_id, :liquor_id], unique: :true
  end
end
