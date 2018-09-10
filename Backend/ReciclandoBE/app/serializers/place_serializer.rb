class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :nombre_lugar, :direccion_lugar, :estado_lugar, :puntos_boleta_lugar
end
