class AddCreateToConditions < ActiveRecord::Migration[6.1]
  def change
    add_column :conditions, :start_time, :time, comment: "始業時間"
    add_column :conditions, :finish_time, :time, comment: "就業時間"
    add_column :conditions, :shift_umu, :string, comment: "シフトの有無"
    add_column :conditions, :remark, :text, comment: "就業条件の備考"

  end
end
