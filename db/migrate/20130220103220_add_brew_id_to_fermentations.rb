class AddBrewIdToFermentations < ActiveRecord::Migration
  def change
    add_column :fermentations, :brew_id, :integer
  end
end
