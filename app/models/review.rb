# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :book
  has_many :comments
end
