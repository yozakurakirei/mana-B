class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.references :company, null: false, foreign_key: true
      t.references :staff, null: false, foreign_key: true
      # conditionは勤務報告様に作成予定。今はadminと解除中
      t.references :condition, foreign_key: true

      t.timestamps
    end
  end
end
