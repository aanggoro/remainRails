json.extract! registration, :id, :name, :address, :password, :phone_number, :email, :created_at, :updated_at
json.url registration_url(registration, format: :json)
