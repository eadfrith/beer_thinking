class AddExtractUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :extract_unit, :string
  end
end
