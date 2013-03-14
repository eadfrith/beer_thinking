class Recipe < ActiveRecord::Base
  attr_accessible :original_gravity, :recipe_code, :extract, :adjunct, :yeast,
  	:water, :sugar, :beer_style, :brewing_method, :iteration, :published, :bjcp_category, :ww_beer_kits,
    :other_extract, :other_adjunct, :times_brewed, :hops_attributes, :grains_attributes, :brews_attributes

  belongs_to :user, :inverse_of => :recipes

  after_create :update_iteration
  
  
  has_many :hops, dependent: :destroy
  has_many :grains, dependent: :destroy
 

  accepts_nested_attributes_for :hops, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :grains, :reject_if => :all_blank, :allow_destroy => true


  validates :user_id, presence: true

  VALID_GRAVITY_REGEX = /\A[1-9](.)[0-9][0-9][0-9]\z/
  validates :original_gravity, presence: true, format: { with: VALID_GRAVITY_REGEX }
  
  validates :recipe_code, presence: true

  default_scope order: 'recipes.created_at DESC'




def update_iteration
  #iter = Recipe.count(:iteration, :conditions => 'user_id=self.user_id' )
  short_code = self.recipe_code.match /(.*[-])/
  

  #ter = Recipe.where(:user_id => self.user_id, ['recipe_code like ?', "%#{short_code[0]+short_code[1]}%"]).count

  #iter = Recipe.maximum(:iteration)
  iter = Recipe.maximum(:iteration, :conditions => ['recipe_code LIKE ?', self.recipe_code+"%"]) 
   #iter = Recipe.where("user_id = ? AND recipe_code LIKE ?", self.user_id, self.recipe_code+"%").count
   if iter == nil
    self.update_attribute :iteration, 1
    
   else
    self.update_attribute :iteration, iter+1
    
  end
    self.update_attribute :recipe_code, self.recipe_code+"-"+self.iteration.to_s
    self.update_attribute :times_brewed, 0

end

end