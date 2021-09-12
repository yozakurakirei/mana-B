class AddColumnToConditions < ActiveRecord::Migration[6.1]
  def change
    add_column :conditions, :shift_start, :time
    add_column :conditions, :shift_finish, :time
    add_column :conditions, :shift_umu, :string
    add_column :conditions, :remarks, :text
  end
end
