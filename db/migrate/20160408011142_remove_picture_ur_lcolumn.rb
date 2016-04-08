class RemovePictureUrLcolumn < ActiveRecord::Migration
  def change
    remove_column :doges, :pictureURL, :text
  end
end
