# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :review
  validates :commenter, presence: true
  validates :body, presence: true
end
