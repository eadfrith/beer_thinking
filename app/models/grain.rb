class Grain < ActiveRecord::Base
	belongs_to :recipe
  attr_accessible :amount, :colour, :name, :steep_time, :steep_water, :steep_water_temp,
   :method, :weight_unit, :colour_unit, :water_unit, :water_temp_unit, :steep_time_unit
end
