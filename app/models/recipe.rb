class Recipe < ActiveRecord::Base
  attr_accessible :original_gravity, :recipe_code

  belongs_to :user

  validates :user_id, presence: true

  VALID_GRAVITY_REGEX = /\A[1-9](.)[0-9][0-9][0-9]\z/
  validates :original_gravity, presence: true, format: { with: VALID_GRAVITY_REGEX }
  
  validates :recipe_code, presence: true

  default_scope order: 'recipes.created_at DESC'

end
