class AddGenericCategoryToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :generic_category, :string
  end
end
