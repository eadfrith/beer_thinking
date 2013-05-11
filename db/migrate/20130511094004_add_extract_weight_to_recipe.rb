class AddExtractWeightToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :extract_weight, :integer
  end
end
