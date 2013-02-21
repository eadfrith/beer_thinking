class AddRecipeIdToBrews < ActiveRecord::Migration
  def change
    add_column :brews, :recipe_id, :integer
  end
end
