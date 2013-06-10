class AddEstimateAlcoholVolumeToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :estimate_alcohol, :decimal
  end
end
