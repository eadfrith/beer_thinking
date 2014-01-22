class AddFermentationTemperatureToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :fermentation_temperature, :decimal
  end
end
