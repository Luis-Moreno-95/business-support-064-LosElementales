class ContentSerializer < ActiveModel::Serializer
  attributes :id, :nombre_contenido, :descripcion_contenido, :ruta_multimedia_contenido
end
