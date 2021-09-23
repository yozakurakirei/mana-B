class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :approvals, dependent: :destroy
  has_many :applies, dependent: :destroy
  has_many :admins, through: :approvals
end
