class AddSteepVolumeToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :steep_water, :integer
  end
end
