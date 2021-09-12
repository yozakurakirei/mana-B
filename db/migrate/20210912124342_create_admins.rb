class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.references :company, null: false, foreign_key: true
      t.references :staff, null: false, foreign_key: true
      t.references :report, foreign_key: true
      t.references :condition, foreign_key: true
      
      t.string  :place
      t.text    :place_remarks
      t.integer :salary
      t.string  :koutsuhi
      t.text    :money_remarks
      t.date    :start, comment: "開始日"
      t.date    :finish, comment: "終了日"
      t.string    :first_shift, comment: "初日シフト"
      t.string  :salary_kinds, comment: "日給or時給"

      t.timestamps
    end
  end
