class CreateJoinTableClasificationQuestion < ActiveRecord::Migration[5.2]
  def change
    create_join_table :clasifications, :questions do |t|
      # t.index [:clasification_id, :question_id]
      # t.index [:question_id, :clasification_id]
    end
  end
end
