class AddRecipeIdToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :recipe_id, :integer
  end
end
