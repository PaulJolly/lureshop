json.extract! user, :id, :email, :password, :is_admin, :created_at, :updated_at
json.url user_url(user, format: :json)
