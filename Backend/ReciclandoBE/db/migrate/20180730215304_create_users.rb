class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre_usuario
      t.string :apellidos_ususario
      t.date :fecha_nacimiento_usuario
      t.string :clave_usuario
      t.integer :puntaje_usuario
      t.timestamps
    end
  end
end
