class UserSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :nombre_usuario, :apellidos_ususario, :fecha_nacimiento_usuario, :puntaje_usuario, :email
end
