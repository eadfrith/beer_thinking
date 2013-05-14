class AddNumberOfYeastPacksToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :yeast_packs, :integer
  end
end
