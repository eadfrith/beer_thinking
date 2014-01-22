class AddFgMaxToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :fg_max, :decimal, :precision => 4, :scale => 3
  end
end
