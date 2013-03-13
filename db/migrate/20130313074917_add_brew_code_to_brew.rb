class AddBrewCodeToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :brew_code, :string
  end
end
