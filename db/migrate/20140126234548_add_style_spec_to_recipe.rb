class AddStyleSpecToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :style_spec, :string
  end
end
