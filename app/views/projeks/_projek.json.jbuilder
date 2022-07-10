json.extract! projek, :id, :name, :status, :notes, :created_at, :updated_at
json.url projek_url(projek, format: :json)
