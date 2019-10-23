class Schedule < ApplicationRecord

  has_one :reservation, dependent: :destroy

  validates :start, uniqueness: true
  validates :close, uniqueness: true

end
