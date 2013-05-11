class AddOtherAdjunctUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :other_adjunct_unit, :string
  end
end
