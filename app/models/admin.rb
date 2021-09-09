class Admin < ApplicationRecord
  belongs_to :company
  belongs_to :staff
  belongs_to :report

  accepts_nested_attributes_for :report
end
