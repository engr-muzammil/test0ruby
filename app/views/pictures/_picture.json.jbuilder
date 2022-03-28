json.extract! picture, :id, :author, :width, :height, :url, :download_url, :created_at, :updated_at
json.url picture_url(picture, format: :json)
