class Fermentation < ActiveRecord::Base
  attr_accessible :date_time, :day, :notes, :pressure, :specific_gravity, :temperature

  belongs_to :brew
end
