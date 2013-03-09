class CreateBeerStyles < ActiveRecord::Migration
  def change
    create_table :beer_styles do |t|
      t.string :beer_style
      t.string :bjcp_category

      t.timestamps
    end
  end
end
