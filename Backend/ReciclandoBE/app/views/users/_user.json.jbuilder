json.extract! user, :id, :nombre_usuario, :apellidos_usuario, :fecha_nacimiento_usuario, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
