class AddNameToWwBeerKits < ActiveRecord::Migration
  def change
    add_column :ww_beer_kits, :name, :string
  end
end
