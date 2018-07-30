class CreateClasification < ActiveRecord::Migration[5.2]
  def change
    create_table :clasifications do |t|
      t.string :descripcion_clasificacion
    end
  end
end
