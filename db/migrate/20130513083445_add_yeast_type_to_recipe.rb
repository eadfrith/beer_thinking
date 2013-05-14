class AddYeastTypeToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :yeast_type, :string
  end
end
