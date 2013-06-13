class Fermentation < ActiveRecord::Base
  attr_accessible :date_time, :day, :notes, :pressure, :specific_gravity, :temperature, :pressure_unit, :temperature_unit

  belongs_to :brew

	VALID_GRAVITY_REGEX = /\A[1-9](.)[0-9][0-9][0-9]\z/
  	validates :specific_gravity, format: { with: VALID_GRAVITY_REGEX }

end
