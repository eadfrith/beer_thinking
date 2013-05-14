class AddVolumeUnitToHops < ActiveRecord::Migration
  def change
    add_column :hops, :volume_unit, :string
  end
end
