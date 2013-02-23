class Recipe < ActiveRecord::Base
  attr_accessible :original_gravity, :recipe_code, :extract, :adjunct, :yeast,
  	:water, :sugar, :beer_style, :brewing_method, :iteration, :published, :hops_attributes, :grains_attributes, :brews_attributes

  belongs_to :user, :inverse_of => :recipes
  has_many :hops, dependent: :destroy
  has_many :grains, dependent: :destroy

  accepts_nested_attributes_for :hops, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :grains, :reject_if => :all_blank, :allow_destroy => true


  validates :user_id, presence: true

  VALID_GRAVITY_REGEX = /\A[1-9](.)[0-9][0-9][0-9]\z/
  validates :original_gravity, presence: true, format: { with: VALID_GRAVITY_REGEX }
  
  validates :recipe_code, presence: true

  default_scope order: 'recipes.created_at DESC'

 

end