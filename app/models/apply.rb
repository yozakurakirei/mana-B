class Apply < ApplicationRecord
  belongs_to :user
  belongs_to :admin

  validates :user_id, presence: true
  validates :admin_id, presence: true
  validates :user_id, uniqueness: { scope: :admin_id }
  validates :admin_id, uniqueness: { scope: :user_id }  
end
