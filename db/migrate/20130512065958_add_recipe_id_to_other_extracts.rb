class AddRecipeIdToOtherExtracts < ActiveRecord::Migration
  def change
    add_column :other_extracts, :recipe_id, :integer
  end
end
