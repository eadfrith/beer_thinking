class AddIbuMaxToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :ibu_max, :integer
  end
end
