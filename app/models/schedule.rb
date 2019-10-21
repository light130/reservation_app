class Schedule < ApplicationRecord

  has_one :reservation, dependent: :destroy

end
