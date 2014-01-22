class AddFgMinToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :fg_min, :decimal, :precision => 4, :scale => 3
  end
end
