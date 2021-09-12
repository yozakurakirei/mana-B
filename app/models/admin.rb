class Admin < ApplicationRecord
  belongs_to :company
  belongs_to :staff
  belongs_to :report
  belongs_to :condition, optional: true

  accepts_nested_attributes_for :report, :condition
end
