class CreateOtherExtracts < ActiveRecord::Migration
  def change
    create_table :other_extracts do |t|
      t.string :extract
      t.integer :weight
      t.string :units

      t.timestamps
    end
  end
end
