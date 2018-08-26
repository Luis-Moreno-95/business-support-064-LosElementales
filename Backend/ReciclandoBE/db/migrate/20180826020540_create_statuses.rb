class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.string :descripcion_estado

      t.timestamps
    end
  end
end
