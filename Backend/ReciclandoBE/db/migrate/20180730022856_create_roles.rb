class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :nombre_rol
      t.string :descripcion_rol
    end
  end
end
