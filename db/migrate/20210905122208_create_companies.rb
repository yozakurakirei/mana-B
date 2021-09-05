class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :name_kana
      t.string :product
      t.string :brand

      t.timestamps
    end
  end
end
