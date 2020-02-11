class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, format: {with: /\A\d{10}$|^\d{11}\z/}
end
