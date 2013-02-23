class AddIndexToBrewsUserIdCreatedAt < ActiveRecord::Migration
  def change
  	add_index :brews, [:user_id, :created_at], unique: true
  end
end
