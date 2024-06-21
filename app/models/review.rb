# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :book
  has_many :comments
  validates :body, presence: true
  validates :rating, presence: true
end
