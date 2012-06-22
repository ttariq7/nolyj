class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :content
      t.integer :user_id
      t.string :date

      t.timestamps
    end
    add_index :achievements, [:user_id, :created_at]
  end
end
