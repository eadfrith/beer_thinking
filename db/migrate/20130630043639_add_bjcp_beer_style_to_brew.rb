class AddBjcpBeerStyleToBrew < ActiveRecord::Migration
  def change
    add_column :brews, :bjcp_beer_style, :string
  end
end
