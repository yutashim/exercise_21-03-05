json.extract! user, :id, :name, :age, :sex, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
