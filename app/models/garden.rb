class Garden < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :booking
  belongs_to :user

  validates :location, presence: true
  validates :category, presence: true
  validates :description, presence: true, length: { minimum: 10 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_garden?

  mount_uploader :photo, PhotoUploader
end
