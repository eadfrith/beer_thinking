class AddYeastWeightToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :yeast_weight, :integer
  end
end
