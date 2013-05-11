class CreateAdjuncts < ActiveRecord::Migration
  def change
    create_table :adjuncts do |t|
      t.string :adjunct
      t.integer :weight
      t.string :units

      t.timestamps
    end
  end
end
