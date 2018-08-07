json.extract! content, :id, :nombre_contenido, :descripcion_contenido, :ruta_multimedia_contenido, :created_at, :updated_at
json.url content_url(content, format: :json)
