class ChangeBjcpCatColumn < ActiveRecord::Migration
  def change
  	rename_column :bjcp_categories, :bjcp_category, :bjcp_category_id
  end

end
