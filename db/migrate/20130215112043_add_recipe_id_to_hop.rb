class AddRecipeIdToHop < ActiveRecord::Migration
  def change
    add_column :hops, :recipe_id, :integer
  end
end
