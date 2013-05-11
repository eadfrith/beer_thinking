class AddOtherExtractWeightToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :other_extract_weight, :integer
  end
end
