class Admin < ApplicationRecord
  belongs_to :company
  belongs_to :staff
  belongs_to :report
  belongs_to :condition, optional: true, dependent: :destroy
  # 申請機能
  has_many :belongings, dependent: :destroy
  has_many :applies, dependent: :destroy
  has_many :users, through: :belongings

  # すでに申請済ならtrueを返す
  def user_belonging?(user)
    users.include?(user)
  end

  accepts_nested_attributes_for :report, :condition
end
