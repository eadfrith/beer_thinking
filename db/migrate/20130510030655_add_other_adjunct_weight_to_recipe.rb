class AddOtherAdjunctWeightToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :other_adjunt_weight, :integer
  end
end
