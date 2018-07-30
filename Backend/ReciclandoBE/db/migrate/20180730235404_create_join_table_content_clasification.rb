class CreateJoinTableContentClasification < ActiveRecord::Migration[5.2]
  def change
    create_join_table :contents, :clasifications do |t|
      # t.index [:content_id, :clasification_id]
      # t.index [:clasification_id, :content_id]
    end
  end
end
