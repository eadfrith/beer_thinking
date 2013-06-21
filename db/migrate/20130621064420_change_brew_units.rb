class ChangeBrewUnits < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    change_column :fermentations, :day, :decimal
    change_column :fermentations, :temperature, :decimal
    change_column :fermentations, :pressure, :decimal
  end
end
