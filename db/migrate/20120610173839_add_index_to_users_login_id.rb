class AddIndexToUsersLoginId < ActiveRecord::Migration
  def change
    add_index :users, :login_id, unique: true
  end
end
