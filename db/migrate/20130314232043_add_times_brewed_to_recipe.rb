class AddTimesBrewedToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :times_brewed, :integer
  end
end
