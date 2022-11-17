class AddUserIdToAnalysis < ActiveRecord::Migration[6.1]
  def up
    execute 'DELETE FROM analyses;'
    add_reference :analyses, :user, null: false, index: true
  end

  def down
    remove_reference :analyses, :user, index: true
  end
end
