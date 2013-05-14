class AddWaterUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :water_unit, :string
  end
end
