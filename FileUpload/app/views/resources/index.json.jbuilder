json.array!(@resources) do |resource|
  json.extract! resource, :id, :file_name, :content_type, :file_size
  json.url resource_url(resource, format: :json)
end
