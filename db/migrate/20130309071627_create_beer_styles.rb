class CreateBeerStyles < ActiveRecord::Migration
  def change
    create_table :beer_styles do |t|
      t.string :beer_style
      t.integer :bjcp_category_id

      t.timestamps
    end
  end
end
