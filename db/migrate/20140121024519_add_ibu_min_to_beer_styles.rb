class AddIbuMinToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :ibu_min, :integer
  end
end
