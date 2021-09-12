class RemoveTimeFromConditions < ActiveRecord::Migration[6.1]
  def change
    remove_column :conditions, :start_time, :time
    remove_column :conditions, :finish_time, :time

    add_column :conditions, :start, :time
    add_column :conditions, :finish, :time
  end
end
