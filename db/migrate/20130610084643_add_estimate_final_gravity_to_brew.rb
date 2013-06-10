class AddEstimateFinalGravityToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :estimate_fg, :string
  end
end
