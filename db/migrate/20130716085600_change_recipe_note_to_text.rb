class ChangeRecipeNoteToText < ActiveRecord::Migration
  def up
  	change_column :recipes, :recipe_note, :text
  end

  def down
  end
end