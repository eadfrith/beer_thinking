class BeerStyle < ActiveRecord::Base
  attr_accessible :beer_style, :ibu_min, :ibu_max, :srm_min, :srm_max, :og_min, :og_max,
    :fg_min, :fg_max, :abv_min, :abv_max, :bjcp_category

  belongs_to :bjcp_category
end
