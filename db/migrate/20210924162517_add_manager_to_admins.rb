class AddManagerToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :manager,    :string, comment: "担当者"
    add_column :admins, :tel1,       :string, comment: "電話番号1"
    add_column :admins, :tel2,       :string, comment: "電話番号2"
    add_column :admins, :fax,        :string, comment: "FAX"
    add_column :admins, :mana_user,  :string, comment: "担当営業"
    add_column :admins, :employment, :integer, comment: "雇用形態"
    add_column :admins, :label,      :integer, comment: "ラベル"
    add_column :admins, :decision,   :string, comment: "スタッフ決定日"
    add_column :admins, :report_day, :string, comment: "スタッフ報告日"
    add_column :admins, :detail,     :string, comment: "詳細連絡日"
    add_column :admins, :completion, :string, comment: "完了日"
  end
end
