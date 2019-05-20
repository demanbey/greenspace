class Garden < ApplicationRecord
  belongs_to :user
  has_many :users, through: :booking
  has_many :bookings, dependent: :destroy

  validates :location, presence: true
  validates :type, presence: true
  validates :description, presence: true, length: { minimum: 100 }
end
