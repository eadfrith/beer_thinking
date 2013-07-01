class AddOverallBeverageStyleToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :overall_beverage_style, :string
  end
end
