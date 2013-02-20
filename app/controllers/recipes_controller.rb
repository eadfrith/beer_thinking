class RecipesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy


  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.build(params[:recipe])
    if @recipe.save
      flash[:success] = "Recipe created!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @recipe.update_attributes(params[:recipe])
      flash[:success] = "Recipe updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end


  def destroy
    @recipe.destroy
    redirect_to current_user
  end

  def show
   @recipe = Recipe.find(params[:id])
  end


private

    def correct_user
      @recipe = current_user.recipes.find_by_id(params[:id])
      redirect_to root_url if @recipe.nil?
    end

end
