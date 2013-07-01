class AddColourToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :colour, :string
  end
end
