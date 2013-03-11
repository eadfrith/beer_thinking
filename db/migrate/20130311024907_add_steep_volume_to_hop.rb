class AddSteepVolumeToHop < ActiveRecord::Migration
  def change
    add_column :hops, :steep_water_volume, :integer
  end
end
