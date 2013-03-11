class AddWwBeerKitsToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :ww_beer_kits, :string
  end
end
