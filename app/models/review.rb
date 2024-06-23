# frozen_string_literal: true

def valid_rating?(rating)
  (rating % 0.5).zero? &&
    rating >= 1 &&
    rating <= 5
end

class Review < ApplicationRecord
  belongs_to :book
  has_many :comments
  validates :username, presence: true, length: { in: 2..20 }
  validates :body, presence: true, length: { in: 2..2000 }
  validates :rating, presence: true, if: -> { valid_rating?(1) }
end
