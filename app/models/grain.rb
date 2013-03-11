class Grain < ActiveRecord::Base
	belongs_to :recipe
  attr_accessible :amount, :colour, :name, :steep_time, :steep_water, :steep_water_temp
end
