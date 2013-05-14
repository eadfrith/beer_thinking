class AddBitternessToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :bitterness, :integer
  end
end
