json.extract! comic, :id, :name, :body, :created_at, :updated_at
json.url comic_url(comic, format: :json)
