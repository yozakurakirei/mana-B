class RemoveDestroyFromAdmins < ActiveRecord::Migration[6.1]
  def change
    remove_column :admins, :start_time, :time
    remove_column :admins, :finish_time, :time
  end
end
