class CreateSugars < ActiveRecord::Migration
  def change
    create_table :sugars do |t|
      t.string :sugar
      t.decimal :weight
      t.string :units

      t.timestamps
    end
  end
end
