class AddBjcpCategoryToBjcpCategory < ActiveRecord::Migration
  def change
    add_column :bjcp_categories, :bjcp_category, :string
  end
end
