json.array! @comments do |comment|
  json.extract! comment, :id, :commenter, :comment, :review_id, :created_at, :updated_at
end
