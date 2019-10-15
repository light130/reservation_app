class Schedule < ApplicationRecord

  has_one :appointment_user, through: :reservation, source: :user
  has_one :reservation, dependent: :destroy

end
