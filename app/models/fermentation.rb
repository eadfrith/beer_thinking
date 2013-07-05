class Fermentation < ActiveRecord::Base
  attr_accessible :date_time, :day, :notes, :pressure, :specific_gravity, :temperature, :pressure_unit, :temperature_unit

  belongs_to :brew

	

end
