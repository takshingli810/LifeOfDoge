class AddPictureUrLcolumn < ActiveRecord::Migration
  def change
    add_column :doges, :pictureURL, :text, array: true, default: []
  end
end
