class AddOtherExtractUnitToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :other_extract_unit, :string
  end
end
