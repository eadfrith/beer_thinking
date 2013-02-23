class AddPublishedToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :published, :boolean
  end
end
