class AddOtherExtractToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :other_extract, :string
  end
end
