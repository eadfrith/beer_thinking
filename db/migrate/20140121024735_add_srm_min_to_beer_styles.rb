class AddSrmMinToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :srm_min, :integer
  end
end
