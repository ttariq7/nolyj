class CreateSnolyjins < ActiveRecord::Migration
  def change
    create_table :snolyjins do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :snolyjins, [:user_id, :created_at]
  end
end
