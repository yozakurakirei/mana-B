class AddCountToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :t_month, :string, comment: "当月日数"
    add_column :admins, :n_month, :string, comment: "翌月日数"
    add_column :admins, :f_amount, :string, comment: "手数料"
    add_column :admins, :o_amount, :string, comment: "事務手数料"
  end
end
