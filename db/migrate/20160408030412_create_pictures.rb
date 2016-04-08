class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :pictureURL
      t.integer :doge_id

      t.timestamps null: false
    end
  end
end
