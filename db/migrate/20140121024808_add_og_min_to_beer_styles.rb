class AddOgMinToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :og_min, :decimal, :precision => 4, :scale => 3
  end
end
