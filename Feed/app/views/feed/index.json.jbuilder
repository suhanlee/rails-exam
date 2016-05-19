json.array!(@articles) do |article|
  json.extract! article, :id, :description, :image_url
  json.url article_url(article, format: :json)
end