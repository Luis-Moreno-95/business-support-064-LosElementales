class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre_usuario
      t.string :apellidos_usuario
      t.date :fecha_nacimiento_usuario
      t.string :password_digest

      t.timestamps
    end
  end
end
