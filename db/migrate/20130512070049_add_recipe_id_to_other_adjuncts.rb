class AddRecipeIdToOtherAdjuncts < ActiveRecord::Migration
  def change
    add_column :other_adjuncts, :recipe_id, :integer
  end
end
