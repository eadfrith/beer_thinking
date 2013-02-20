class CreateGrains < ActiveRecord::Migration
  def change
    create_table :grains do |t|
      t.string :name
      t.decimal :amount
      t.string :colour
      t.string :steep_time

      t.timestamps
    end
  end
end
