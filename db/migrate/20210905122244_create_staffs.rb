class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :name_kanak
      t.text :remarks

      t.timestamps
    end
  end
end
