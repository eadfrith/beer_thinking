class ChangeColumnTypesInRecipe < ActiveRecord::Migration
  def change
  	
change_column :recipes, :yeast_starter_size, :decimal
change_column :recipes, :yeast_weight, :decimal
change_column :recipes, :yeast_packs, :decimal
change_column :recipes, :bitterness, :decimal
change_column :recipes, :colour, :decimal
change_column :ww_extracts, :weight, :decimal
change_column :other_adjuncts, :weight, :decimal
change_column :other_extracts, :weight, :decimal
change_column :hops, :steep_water_temp, :decimal
change_column :hops, :steep_water_volume, :decimal
change_column :grains, :steep_water, :decimal
change_column :grains, :steep_water_temp, :decimal
change_column :adjuncts, :weight, :decimal

  end
end




