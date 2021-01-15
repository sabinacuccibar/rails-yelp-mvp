class Review < ApplicationRecord
  RANGE = [0..5]
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true}, inclusion: { in: (0..5)}
end



