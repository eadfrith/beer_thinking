class AddExtractToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :extract, :string
    add_column :recipes, :adjunct, :string
    add_column :recipes, :yeast, :string
    add_column :recipes, :water, :decimal
    add_column :recipes, :sugar, :string
    add_column :recipes, :beer_style, :string
    add_column :recipes, :brewing_method, :string
    add_column :recipes, :iteration, :integer
  end
end
