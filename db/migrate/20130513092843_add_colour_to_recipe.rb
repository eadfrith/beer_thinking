class AddColourToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :colour, :integer
  end
end
