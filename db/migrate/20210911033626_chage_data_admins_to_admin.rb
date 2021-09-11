class ChageDataAdminsToAdmin < ActiveRecord::Migration[6.1]
  def change
    change_column :admins, :koutsuhi, :string
  end
end
