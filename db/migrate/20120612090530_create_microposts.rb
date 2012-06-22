class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.integer :user_id
      t.integer :space_id
      t.string :header
      t.string :content

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
