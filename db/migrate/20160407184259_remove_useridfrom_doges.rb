class RemoveUseridfromDoges < ActiveRecord::Migration
  def change
    remove_column :doges, :user_id, :integer
  end
end
