class BeerStyle < ActiveRecord::Base
  attr_accessible :beer_style, :bjcp_category

  belongs to :bjcp_category
end
