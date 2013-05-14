class Sugar < ActiveRecord::Base
	belongs_to :recipe
  attr_accessible :sugar, :units, :weight
end
