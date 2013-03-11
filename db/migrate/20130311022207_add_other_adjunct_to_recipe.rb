class AddOtherAdjunctToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :other_adjunct, :string
  end
end
