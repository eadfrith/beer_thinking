class AddSteepTempToHop < ActiveRecord::Migration
  def change
    add_column :hops, :steep_water_temp, :integer
  end
end
