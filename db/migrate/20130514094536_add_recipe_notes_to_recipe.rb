class AddRecipeNotesToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :recipe_note, :string
  end
end
