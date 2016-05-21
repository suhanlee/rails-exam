json.array!(@comments) do |comment|
  json.extract! comment, :id, :contents
  json.url comment_url(comment, format: :json)
end
