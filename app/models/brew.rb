class Brew < ActiveRecord::Base
  attr_accessible :alcohol_percentage, :brew_number, :carbonation, :clarifiaction, :clarity, 
  :other_comments, :start_date_time, :taste, :taste_score, :wort_must_production_notes, :fermentations_attributes

  belongs_to :recipe
end
