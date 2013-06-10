class AddEstimateAlcoholVolumeToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :estimate_alcohol, :decimal
  end
end
