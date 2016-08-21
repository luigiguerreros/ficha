json.extract! origen, :id, :nombre_origen, :descripcion, :created_at, :updated_at
json.url origen_url(origen, format: :json)