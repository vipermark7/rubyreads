class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :author, presence: true
  validates :summary, presence: true
end
