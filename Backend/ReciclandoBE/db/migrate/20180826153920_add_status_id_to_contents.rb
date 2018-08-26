class AddStatusIdToContents < ActiveRecord::Migration[5.2]
  def change
    add_reference :contents, :status, foreign_key: true
  end
end
