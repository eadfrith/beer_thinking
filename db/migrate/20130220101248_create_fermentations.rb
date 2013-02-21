class CreateFermentations < ActiveRecord::Migration
  def change
    create_table :fermentations do |t|
      t.datetime :date_time
      t.integer :day
      t.string :specific_gravity
      t.integer :temperature
      t.integer :pressure
      t.text :notes

      t.timestamps
    end
  end
end
