class AddWaterUnitToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :water_unit, :string
  end
end
