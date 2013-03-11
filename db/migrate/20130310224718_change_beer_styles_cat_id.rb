class ChangeBeerStylesCatId < ActiveRecord::Migration
  def change
  	change_column :beer_styles, :bjcp_category_id, :integer
  end
end
