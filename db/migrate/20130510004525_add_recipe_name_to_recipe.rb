class AddRecipeNameToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :recipe_name, :string
  end
end
