class Admin < ApplicationRecord
  belongs_to :company
  belongs_to :staff
  belongs_to :condition
end
