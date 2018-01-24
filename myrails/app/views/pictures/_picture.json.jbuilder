json.extract! picture, :id, :name, :description, :urlimage, :created_at, :updated_at
json.url picture_url(picture, format: :json)
