class AddingDogeCount < ActiveRecord::Migration
  def change
    add_column :users, :dogeCount, :integer
  end
end
