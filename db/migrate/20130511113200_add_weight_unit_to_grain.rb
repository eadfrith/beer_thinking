class AddWeightUnitToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :weight_unit, :string
  end
end
