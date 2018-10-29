class AddImgUriToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :img_uri_lugar, :string
  end
end
