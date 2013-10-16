class Hop < ActiveRecord::Base

	belongs_to :recipe
  attr_accessible :alpha_acids, :amount, :boil_or_steep, :boil_or_steep_time, :name, :steep_water_volume,
   :steep_water_temp, :amount_unit, :boil_or_steep_unit, :temp_unit, :volume_unit, :liquid_type, :form
end
