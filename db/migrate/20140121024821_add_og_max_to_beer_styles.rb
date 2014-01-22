class AddOgMaxToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :og_max, :decimal, :precision => 4, :scale => 3
  end
end
