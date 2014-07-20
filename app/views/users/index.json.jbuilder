json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :user_avatar, :user_admin
  json.url user_url(user, format: :json)
end
