class CreateGenericCategories < ActiveRecord::Migration
  def change
    create_table :generic_categories do |t|
      t.string :generic_category

      t.timestamps
    end
  end
end
