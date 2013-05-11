class AddAdjunctUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :adjunct_unit, :string
  end
end
