class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :name
      t.decimal :alpha_acids
      t.decimal :amount
      t.string :boil_or_steep
      t.decimal :boil_or_steep_time

      t.timestamps
    end
  end
end
