class Review < ApplicationRecord
    belongs_to :book
    has_many :comments
    validates :body, length: { minimum: 2 }
    validates :book_id, presence: true
end
