class AddYeastStarterSizeToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :yeast_starter_size, :integer
  end
end
