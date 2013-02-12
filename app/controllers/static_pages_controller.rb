class StaticPagesController < ApplicationController
  def home
  	@recipe = current_user.recipes.build if signed_in?
  end

  def help
  end

  def about
  end

end
