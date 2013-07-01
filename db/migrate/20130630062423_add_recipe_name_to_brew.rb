class AddRecipeNameToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :recipe_name, :string
  end
end
