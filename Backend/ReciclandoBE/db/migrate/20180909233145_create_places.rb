class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :nombre_lugar
      t.string :direccion_lugar
      t.string :estado_lugar
      t.string :puntos_boleta_lugar

      t.timestamps
    end
  end
end
