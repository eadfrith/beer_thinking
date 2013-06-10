class AddActualOriginalGravityToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :actual_og, :string
  end
end
