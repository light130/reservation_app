class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :schedule

  validates :schedule_id, uniqueness: true
end
