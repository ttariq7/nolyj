class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Avatar, :string
  end
end
