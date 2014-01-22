class AddSrmMaxToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :srm_max, :integer
  end
end
