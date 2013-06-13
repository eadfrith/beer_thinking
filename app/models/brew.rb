class Brew < ActiveRecord::Base
  attr_accessible :alcohol_percentage, :brew_number, :carbonation, :clarifiaction, :clarity, :recipe_id,
  :other_comments, :start_date_time, :taste, :taste_score, :wort_must_production_notes, :published, :brew_code,
  :actual_og, :estimate_fg, :estimate_alcohol, :image, :fermentations_attributes

  belongs_to :user, :inverse_of => :brews


  has_many :fermentations, dependent: :destroy

  mount_uploader :image, ImageUploader

  after_create :update_brew_number

  accepts_nested_attributes_for :fermentations, :reject_if => :all_blank, :allow_destroy => true

  

  default_scope order: 'brews.created_at DESC'



def times_brewed(code)
iter = Brew.count(:brew_number, :conditions => ['brew_code LIKE ?', code+"%"]) 

end



def update_brew_number
  #iter = Recipe.count(:iteration, :conditions => 'user_id=self.user_id' )
  short_code = self.brew_code.match /(.*[-])/
  

  #ter = Recipe.where(:user_id => self.user_id, ['recipe_code like ?', "%#{short_code[0]+short_code[1]}%"]).count

  #iter = Recipe.maximum(:iteration)
  iter = Brew.maximum(:brew_number, :conditions => ['brew_code LIKE ?', self.brew_code+"%"]) 
   #iter = Recipe.where("user_id = ? AND recipe_code LIKE ?", self.user_id, self.recipe_code+"%").count
   if iter == nil
    self.update_attribute :brew_number, 1
    
   else
    self.update_attribute :brew_number, iter+1
    
  end
    self.update_attribute :brew_code, self.brew_code+"-"+self.brew_number.to_s

end

end
