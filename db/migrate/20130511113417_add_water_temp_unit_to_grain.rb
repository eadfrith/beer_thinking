class AddWaterTempUnitToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :water_temp_unit, :string
  end
end
