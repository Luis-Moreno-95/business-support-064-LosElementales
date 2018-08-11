json.extract! user, :id, :nombre_usuario, :apellidos_ususario, :fecha_nacimiento_usuario, :clave_usuario, :puntaje_usuario, :created_at, :updated_at
json.url user_url(user, format: :json)
