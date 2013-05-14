class AddLiquidTypeToHops < ActiveRecord::Migration
  def change
    add_column :hops, :liquid_type, :string
  end
end
