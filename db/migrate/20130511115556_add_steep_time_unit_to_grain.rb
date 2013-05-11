class AddSteepTimeUnitToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :steep_time_unit, :string
  end
end
