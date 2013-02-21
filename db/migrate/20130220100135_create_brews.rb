class CreateBrews < ActiveRecord::Migration
  def change
    create_table :brews do |t|
      t.integer :brew_number
      t.datetime :start_date_time
      t.text :wort_must_production_notes
      t.text :clarifiaction
      t.text :taste
      t.integer :taste_score
      t.text :clarity
      t.text :carbonation
      t.decimal :alcohol_percentage
      t.text :other_comments

      t.timestamps
    end
  end
end
