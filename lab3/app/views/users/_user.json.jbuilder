json.extract! user, :id, :name, :last_name, :address, :email, :phone, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
