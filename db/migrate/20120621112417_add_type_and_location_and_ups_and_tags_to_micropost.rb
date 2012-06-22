class AddTypeAndLocationAndUpsAndTagsToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :type, :integer
    add_column :microposts, :location, :string
    add_column :microposts, :ups, :integer
    add_column :microposts, :tags, :string
  end
end
