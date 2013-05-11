class AddAdjunctWeightToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :adjunct_weight, :integer
  end
end
