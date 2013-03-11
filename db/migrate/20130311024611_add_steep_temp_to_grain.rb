class AddSteepTempToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :steep_water_temp, :integer
  end
end
