class AddImageToBrews < ActiveRecord::Migration
  def change
    add_column :brews, :image, :string
  end
end
