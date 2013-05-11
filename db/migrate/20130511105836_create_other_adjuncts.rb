class CreateOtherAdjuncts < ActiveRecord::Migration
  def change
    create_table :other_adjuncts do |t|
      t.string :adjunct
      t.integer :weight
      t.string :units

      t.timestamps
    end
  end
end
