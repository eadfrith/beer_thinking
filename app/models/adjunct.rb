class Adjunct < ActiveRecord::Base
	belongs_to :recipe
  attr_accessible :adjunct, :units, :weight
end
