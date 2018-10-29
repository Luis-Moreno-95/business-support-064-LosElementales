class AddDescripcionLugarToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :descripcion_lugar, :string
  end
end
