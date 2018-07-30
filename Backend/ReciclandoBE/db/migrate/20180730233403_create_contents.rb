class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :nombre_contenido
      t.string :descripcion_contenido
      t.string :ruta_multimedia_contenido
      t.timestamps
    end
  end
end
