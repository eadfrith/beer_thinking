class AddTemperatureUnitToFermentation < ActiveRecord::Migration
  def change
    add_column :fermentations, :temperature_unit, :string
  end
end
