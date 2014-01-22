class AddFermentationTemperatureUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :fermentation_temperature_unit, :string
  end
end
