class AddIndexToBjcpCategoriesBjcpCategoryId < ActiveRecord::Migration
  def change
  	add_index :bjcp_categories, [:bjcp_category_id], unique: true
  end
end
