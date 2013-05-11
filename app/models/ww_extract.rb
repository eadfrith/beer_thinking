class WwExtract < ActiveRecord::Base
	belongs_to :recipe
  attr_accessible :extract, :units, :weight
end
