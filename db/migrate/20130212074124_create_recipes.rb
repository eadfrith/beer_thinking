class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_code
      t.string :original_gravity
      t.integer :user_id

      t.timestamps
    end
    add_index :recipes, [:user_id, :created_at]
  end
end
