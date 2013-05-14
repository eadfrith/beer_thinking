class AddYeastWeightUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :yeast_weight_unit, :string
  end
end
