json.array!(@articles) do |article|
  json.extract! article, :id, :subject, :description, :like, :click
  json.url article_url(article, format: :json)
end
