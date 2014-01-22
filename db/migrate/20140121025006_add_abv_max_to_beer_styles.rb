class AddAbvMaxToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :abv_max, :decimal, :precision => 3, :scale => 1
  end
end
