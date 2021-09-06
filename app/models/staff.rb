class Staff < ApplicationRecord
  has_many :admin

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      staff = find_by(id: row["id"]) || new
      staff.attributes = row.to_hash.slice(*updatable_attributes)
      staff.save
    end
  end

  def self.updatable_attributes
    ["id", "name", "name_kanak", "remarks"]
  end
end
