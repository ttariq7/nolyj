class CreateNolyjins < ActiveRecord::Migration
  def change
    create_table :nolyjins do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :nolyjins, [:user_id, :created_at]
  end
end
