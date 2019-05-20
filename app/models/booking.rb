class Booking < ApplicationRecord
  belongs_to :garden
  belongs_to :user

  validates :garden, presence: true
  validates :user, presence: true
end
