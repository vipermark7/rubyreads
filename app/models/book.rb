class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :title, presence: true, length: { maximum: 200, minimum: 5}
  validates :author, presence: true, length: { maximum: 200, minimum: 5 }
  validates :summary, presence: true, length: { maximum: 2000, minimum: 10 }
end
