class AddAmountUnitToHops < ActiveRecord::Migration
  def change
    add_column :hops, :amount_unit, :string
  end
end
