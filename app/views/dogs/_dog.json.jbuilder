json.extract! dog, :id, :dog_name, :gender, :owner_name, :onwer_phone_1, :owner_phone_2, :created_at, :updated_at
json.url dog_url(dog, format: :json)
