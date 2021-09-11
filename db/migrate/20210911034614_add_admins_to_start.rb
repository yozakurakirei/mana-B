class AddAdminsToStart < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :start, :date, comment: "開始日"
    add_column :admins, :finish, :date, comment: "終了日"
    add_column :admins, :first_shift, :time, comment: "初日シフト"
    add_column :admins, :start_time, :time, comment: "始業時間"
    add_column :admins, :finish_time, :time, comment: "就業時間"
    add_column :admins, :salary_kinds, :string, comment: "日給or時給"
  end
end
