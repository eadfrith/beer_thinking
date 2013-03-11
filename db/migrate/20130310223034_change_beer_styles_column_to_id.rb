class ChangeBeerStylesColumnToId < ActiveRecord::Migration
  def change
  	rename_column :beer_styles, :bjcp_category, :bjcp_category_id
  end
end
