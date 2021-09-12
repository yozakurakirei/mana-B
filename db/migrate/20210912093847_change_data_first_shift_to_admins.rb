class ChangeDataFirstShiftToAdmins < ActiveRecord::Migration[6.1]
  def change
    change_column :admins, :first_shift, :string
  end
end
