class AddTempUnitToHops < ActiveRecord::Migration
  def change
    add_column :hops, :temp_unit, :string
  end
end
