class AddUserIdtoDoges < ActiveRecord::Migration
  def change
    add_reference :doges, :user, index: true
  end
end
