json.extract! history, :id, :type, :user, :description, :dog_id, :created_at, :updated_at
json.url history_url(history, format: :json)
