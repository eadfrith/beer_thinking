class BrewsController < ApplicationController
	  before_filter :signed_in_user, only: [:create, :update, :destroy]
      before_filter :correct_user,   only: :destroy
  
  def new
  	
  	   @brew = Brew.new

	   @recipe = Recipe.find(params[:id])

		
  end

  def create
    @brew = current_user.brews.build(params[:brew])
  
    #@brew = Brew.new(params[:brew])
    if @brew.save
      flash[:success] = "Brew saved!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  def edit
    @brew = Brew.find(params[:id])
    @recipe = Recipe.find(@brew.recipe_id)
  end

  def update
    @brew = Brew.find(params[:id])
    if @brew.update_attributes(params[:brew])
      flash[:success] = "Brew updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end

def show
   @brew = Brew.find(params[:id])
   #@recipe = Recipe.find(params[:id])
    @recipe = Recipe.find(@brew.recipe_id)
   redirect_to brews_path if !@brew.published? && @brew.user.name != current_user.name
  end

def index
 
    @search = Brew.search(params[:q])
    @brews = @search.result
    
  end

def destroy
    @brew.destroy
    redirect_to current_user
  end

private

    def correct_user
      @brew = current_user.brews.find_by_id(params[:id])
      redirect_to root_url if @brew.nil?
    end

    
end