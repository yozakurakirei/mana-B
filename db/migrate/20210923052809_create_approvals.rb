class CreateApprovals < ActiveRecord::Migration[6.1]
  def change
    create_table :approvals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true
      t.integer :apply_id

      t.timestamps
    end
  end
end
