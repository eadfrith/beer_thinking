class AddColourUnitToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :colour_unit, :string
  end
end
