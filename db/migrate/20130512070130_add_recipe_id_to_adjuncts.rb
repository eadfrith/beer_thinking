class AddRecipeIdToAdjuncts < ActiveRecord::Migration
  def change
    add_column :adjuncts, :recipe_id, :integer
  end
end
