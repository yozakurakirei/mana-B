class Company < ApplicationRecord
  has_many :admins
  has_many :staffs, through: :admins

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      company = find_by(id: row["id"]) || new
      company.attributes = row.to_hash.slice(*updatable_attributes)
      company.save
    end
  end

  def self.updatable_attributes
    ["id", "name", "name_kana", "product", "brand"]
  end
end
