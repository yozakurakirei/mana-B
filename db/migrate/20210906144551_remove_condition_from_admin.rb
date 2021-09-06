class RemoveConditionFromAdmin < ActiveRecord::Migration[6.1]
  def change
    remove_reference :admins, :condition, null: false, foreign_key: true
  end
end
