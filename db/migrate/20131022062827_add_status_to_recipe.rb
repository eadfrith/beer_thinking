class AddStatusToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :status, :string
  end
end
