class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :nombre_usuario
      t.string :apellidos_ususario
      t.date :fecha_nacimiento_usuario
      t.integer :puntaje_usuario
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
