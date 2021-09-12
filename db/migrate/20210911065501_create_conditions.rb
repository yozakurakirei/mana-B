class CreateConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :conditions do |t|
      t.string :holiday, comment: "休日"
      t.integer :w_hours, comment: "実働"
      t.integer :w_rest, comment: "休憩"
      t.integer :w_total, comment: "拘束時間"
      t.string :over, comment: "所定労働時間超"
      t.string :test_period, comment: "試用期間"

      t.timestamps
    end
  end
end
