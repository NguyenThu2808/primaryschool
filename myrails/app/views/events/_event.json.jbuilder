json.extract! event, :id, :name, :content, :day, :month, :year, :picture, :created_at, :updated_at
json.url event_url(event, format: :json)
