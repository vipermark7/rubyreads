class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :author, presence: true
end
