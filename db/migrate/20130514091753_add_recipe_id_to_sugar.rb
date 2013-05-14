class AddRecipeIdToSugar < ActiveRecord::Migration
  def change
    add_column :sugars, :recipe_id, :integer
  end
end
