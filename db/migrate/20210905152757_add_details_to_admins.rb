class AddDetailsToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :place, :string
    add_column :admins, :place_remarks, :text
    add_column :admins, :salary, :integer
    add_column :admins, :koutsuhi, :integer
    add_column :admins, :money_remarks, :text
  end
end
