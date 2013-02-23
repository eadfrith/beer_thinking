class AddUserIdToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :user_id, :integer
  end
end
