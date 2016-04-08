class ChangePictureUrLtoEmptyString < ActiveRecord::Migration
  def change
    change_column :doges, :pictureURL, :string, :default => ""
  end
end
