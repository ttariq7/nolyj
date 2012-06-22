class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :first_name
      t.string :surname
      t.string :status

      t.timestamps
    end
  end
end
