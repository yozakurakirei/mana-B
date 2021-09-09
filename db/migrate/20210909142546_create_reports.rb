class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.integer :days
      t.integer :times
      t.integer :c_costs
      t.integer :shotei
      t.integer :choka
      t.text :remark

      t.timestamps
    end
  end
end
