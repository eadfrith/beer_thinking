class AddYeastStarterUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :yeast_starter_unit, :string
  end
end
