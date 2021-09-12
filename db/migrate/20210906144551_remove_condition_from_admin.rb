class RemoveConditionFromAdmin < ActiveRecord::Migration[6.1]
  def change
    remove_reference :admins, :condition, foreign_key: true
  end
end
