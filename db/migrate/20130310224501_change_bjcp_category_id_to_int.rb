class ChangeBjcpCategoryIdToInt < ActiveRecord::Migration
  def change
  	change_column :bjcp_categories, :bjcp_category_id, :integer
 
  end
end
