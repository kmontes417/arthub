class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  has_one :review, dependent: :destroy

  validate :studio_belong_user?
  validates :checkin, presence: true
  validates :checkout, presence: true

  def studio_belong_user?
    array = self.user.studios.all
    # person who is booking the studio
    if array.include?(self.studio_id)
      return false
    else
      return true
    end
  end
end
