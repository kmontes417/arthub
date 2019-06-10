class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  has_one :review
  validates :checkin_date, presence: true
  validates :checkout_date, presence: true
end
