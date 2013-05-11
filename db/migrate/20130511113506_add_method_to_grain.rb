class AddMethodToGrain < ActiveRecord::Migration
  def change
    add_column :grains, :method, :string
  end
end
