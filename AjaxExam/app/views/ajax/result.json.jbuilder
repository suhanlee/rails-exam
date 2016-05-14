json.array!(@books) do |book|
  json.extract! book, :title, :url
end