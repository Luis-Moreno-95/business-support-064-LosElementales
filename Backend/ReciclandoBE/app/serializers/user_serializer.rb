class UserSerializer < ActiveModel::Serializer
  attributes :id, :nombre_usuario, :apellidos_usuario, :email, :fecha_nacimiento_usuario
end
