class Hop < ActiveRecord::Base

	belongs_to :recipe
  attr_accessible :alpha_acids, :amount, :boil_or_steep, :boil_or_steep_time, :name
end