class AddPressureUnitToFermentation < ActiveRecord::Migration
  def change
    add_column :fermentations, :pressure_unit, :string
  end
end
