class Recipe < ActiveRecord::Base
  attr_accessible :original_gravity, :recipe_code, :extract, :adjunct, :yeast,
  	:water, :sugar, :beer_style, :brewing_method, :iteration, :hops_attributes

  belongs_to :user
  has_many :hops, dependent: :destroy
  accepts_nested_attributes_for :hops, :reject_if => :all_blank, :allow_destroy => true


  validates :user_id, presence: true

  VALID_GRAVITY_REGEX = /\A[1-9](.)[0-9][0-9][0-9]\z/
  validates :original_gravity, presence: true, format: { with: VALID_GRAVITY_REGEX }
  
  validates :recipe_code, presence: true

  default_scope order: 'recipes.created_at DESC'

end