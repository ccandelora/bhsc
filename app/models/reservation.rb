class Reservation < ActiveRecord::
	belongs_to :user
  belongs_to :reservation_week
end
