module BrewHelper

#iter = Recipe.maximum(:iteration, :conditions => ['recipe_code LIKE ?', self.recipe_code+"%"]) 
   #iter = Recipe.where("user_id = ? AND recipe_code LIKE ?", self.user_id, self.recipe_code+"%").count

#def calculate_times_brewed()

#end 
end
