class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :appointment, through: :reservation, source: :schedule
  has_one :reservation, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
end
