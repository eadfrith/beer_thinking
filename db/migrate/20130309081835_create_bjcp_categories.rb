class CreateBjcpCategories < ActiveRecord::Migration
  def change
    create_table :bjcp_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
