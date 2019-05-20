class Garden < ApplicationRecord
  belongs_to :user
  has_many :users, through: :booking
  has_many :bookings
end
