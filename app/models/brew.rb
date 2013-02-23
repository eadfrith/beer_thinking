class Brew < ActiveRecord::Base
  attr_accessible :alcohol_percentage, :brew_number, :carbonation, :clarifiaction, :clarity, :recipe_id,
  :other_comments, :start_date_time, :taste, :taste_score, :wort_must_production_notes, :published, :fermentations_attributes

  belongs_to :user, :inverse_of => :brews
  has_many :fermentations, dependent: :destroy

  accepts_nested_attributes_for :fermentations, :reject_if => :all_blank, :allow_destroy => true

  default_scope order: 'brews.created_at DESC'
end
