class AddBjcpCategoryToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :bjcp_category, :string
  end
end
