class CreateConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :conditions do |t|
      t.string :place
      t.text :place_remarks
      t.integer :salary
      t.integer :koutsuhi
      t.text :money_remorks

      t.timestamps
    end
  end
end
