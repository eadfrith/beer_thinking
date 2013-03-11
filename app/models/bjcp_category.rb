class BjcpCategory < ActiveRecord::Base
  attr_accessible :category, :bjcp_category
 
 has_many :beer_styles

end
