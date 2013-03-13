class RecipesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :update, :destroy]
  before_filter :correct_user,   only: :destroy


  def new
    @recipe = Recipe.new
    
  end

  def create
    @recipe = current_user.recipes.build(params[:recipe])
    @recipe.iteration = @iteration
    if @recipe.save
      flash[:success] = "Recipe created!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
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
   redirect_to recipes_path if !@recipe.published? && @recipe.user.name != current_user.name
  end

  def index
    #@recipes = Recipe.paginate(page: params[:page])
    #@recipes = Recipe.search(params[:recipe_code, :beer_style])
    @search = Recipe.search(params[:q])
    @recipes = @search.result
    
  end


private

    def correct_user
      @recipe = current_user.recipes.find_by_id(params[:id])
      redirect_to root_url if @recipe.nil?
    end

end
