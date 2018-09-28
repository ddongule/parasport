json.extract! apimap, :id, :name, :latitude, :longitude, :created_at, :updated_at
json.url apimap_url(apimap, format: :json)
