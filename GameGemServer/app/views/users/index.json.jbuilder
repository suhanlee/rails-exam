json.array!(@users) do |user|
  json.extract! user, :id, :email, :google_token, :facebook_token, :access_token, :name, :image_url
  json.url user_url(user, format: :json)
end
