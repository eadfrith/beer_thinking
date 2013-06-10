class AddEstimateFinalGravityToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :estimate_fg, :string
  end
end
