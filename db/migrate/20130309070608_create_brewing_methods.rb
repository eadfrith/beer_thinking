class CreateBrewingMethods < ActiveRecord::Migration
  def change
    create_table :brewing_methods do |t|
      t.string :brewing_method

      t.timestamps
    end
  end
end
