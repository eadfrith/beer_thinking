class AddBoilOrSteepUnitToHops < ActiveRecord::Migration
  def change
    add_column :hops, :boil_or_steep_unit, :string
  end
end
