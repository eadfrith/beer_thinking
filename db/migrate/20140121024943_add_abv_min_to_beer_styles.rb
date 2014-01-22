class AddAbvMinToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :abv_min, :decimal, :precision => 3, :scale => 1
  end
end
