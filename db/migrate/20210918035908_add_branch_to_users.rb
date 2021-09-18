class AddBranchToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :branch, null: false, foreign_key: true, default: 2
  end
end
