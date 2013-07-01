class AddBeerThinkerToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :beer_thinker, :string
  end
end
