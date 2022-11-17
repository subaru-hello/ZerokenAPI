class CreateLiquors < ActiveRecord::Migration[6.1]
  def change
    create_table :liquors do |t|
      t.string :name
      t.integer :amount
      t.integer :percentage
      t.string :catch_copy
      t.string :image_url
      t.string :site_url

      t.timestamps
    end
  end
end
