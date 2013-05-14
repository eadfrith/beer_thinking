class AddRecipeIdToWwExtracts < ActiveRecord::Migration
  def change
    add_column :ww_extracts, :recipe_id, :integer
  end
end
