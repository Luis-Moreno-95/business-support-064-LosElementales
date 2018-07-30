class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :descripcion_pregunta
      t.integer :peso_pregunta
    end
  end
end
