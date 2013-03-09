class CreateWwBeerKits < ActiveRecord::Migration
  def change
    create_table :ww_beer_kits do |t|

      t.timestamps
    end
  end
end
