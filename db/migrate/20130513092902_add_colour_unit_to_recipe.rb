class AddColourUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :colour_unit, :string
  end
end
