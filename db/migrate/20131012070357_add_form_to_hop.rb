class AddFormToHop < ActiveRecord::Migration
  def change
    add_column :hops, :form, :string
  end
end
