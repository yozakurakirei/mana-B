class CreateBranches < ActiveRecord::Migration[6.1]
  def change
    create_table :branches do |t|
      t.string :name, null: false
      t.string :department

      t.timestamps
    end
  end
end
