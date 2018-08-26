class CreateClasifications < ActiveRecord::Migration[5.2]
  def change
    create_table :clasifications do |t|
      t.string :descripcion_clasificacion

      t.timestamps
    end
  end
end
