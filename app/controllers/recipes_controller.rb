class RecipesController < ApplicationController
  before_filter :signed_in_user

  def create
     @recipe = current_user.recipes.build(params[:recipe])
    if @recipe.save
      flash[:success] = "Recipe created!"
      redirect_to current_user
    else
      render 'create'
    end
  end

  def destroy
  end
end
