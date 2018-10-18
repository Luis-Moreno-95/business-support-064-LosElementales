class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :nombre_lugar, :direccion_lugar, :estado_lugar, :puntos_boleta_lugar, :descripcion_lugar, :img_uri_lugar
end
