# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :review
  validates :commenter, presence: true, length: { maximum: 50, minimum: 2}
  validates :body, presence: true, length: { maximum: 2000, minimum: 5 }
end
