class AddOtherIngredientToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :other_ingredient, :string
  end
end
