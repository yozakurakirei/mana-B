class Admin < ApplicationRecord
  belongs_to :company
  belongs_to :staff
  belongs_to :report
  belongs_to :condition, optional: true, dependent: :destroy
  # 申請機能
  has_many :approvals, dependent: :destroy
  has_many :applies, dependent: :destroy
  has_many :users, through: :approvals

  # すでに申請済ならtrueを返す
  def user_approval?(user)
    users.include?(user)
  end

  accepts_nested_attributes_for :report, :condition
end
