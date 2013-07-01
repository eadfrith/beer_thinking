class AddBrewingMethodToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :brewing_method, :string
  end
end
