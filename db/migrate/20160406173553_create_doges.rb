class CreateDoges < ActiveRecord::Migration
  def change
    create_table :doges do |t|
      t.integer :user_id
      t.integer :age
      t.string :dogeName
      t.string :detail
      t.string :pictureURL

      t.timestamps null: false
    end
  end
end
