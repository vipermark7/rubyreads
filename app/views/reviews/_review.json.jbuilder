json.extract! review, :id, :body, :book_id, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
