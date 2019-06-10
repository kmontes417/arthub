class Review < ApplicationRecord
  belongs_to :booking
  validates_uniqueness_of :booking
end
