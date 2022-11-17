class AddUserIdToDiagnosis < ActiveRecord::Migration[6.1]
  def up
    execute 'DELETE FROM diagnoses;'
    add_reference :diagnoses, :user, null: false, index: true
  end

  def down
    remove_reference :diagnoses, :user, index: true
  end
end
