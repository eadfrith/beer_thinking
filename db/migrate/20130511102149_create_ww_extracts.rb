class CreateWwExtracts < ActiveRecord::Migration
  def change
    create_table :ww_extracts do |t|
      t.string :extract
      t.integer :weight
      t.string :units

      t.timestamps
    end
  end
end
