class Grain < ActiveRecord::Base
	belongs_to :recipe
  attr_accessible :amount, :colour, :name, :steep_time
end
