class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipes = Recipe.order(:prep_time) if params[:order] == "prep_time"
    @recipes = Recipe.where('prep_time <= ?', 5) if params[:feature] == "quick_fix"
    @recipes = Recipe.order(:created_at => :desc) if params[:order] == "submission_time"
    @recipes = Recipe.joins(:categories).where("categories.name = ?", params[:category]) if params[:category] 
    
    @categories = Category.all
  end

  def show
    if params[:id] == "random"
      # recipes = Recipe.all
      # @recipe = recipes.sample
      @recipe = Recipe.order("RAND()").first if params[:id] == "random"
    else
      @recipe = Recipe.find_by(:id => params[:id])
    end
    # @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = current_user.recipes.create(params[:recipe])
    flash[:success] = "Recipe successfully added."
    redirect_to "/recipes/#{recipe.id}"
    # Recipe.create({"name"=>"asdfasdf", "contributor"=>"asdfadsf", "ingredients"=>"asdfdasf", "directions"=>"asdfasdffsa"})
  end

  def edit
    @recipe = Recipe.find_by(:id => params[:id])
  end

  def update
    @recipe = Recipe.find_by(:id => params[:id])
    @recipe.update(params[:recipe])
    flash[:success] = "Recipe udpdated."
    redirect_to "/recipes/#{params[:id]}"
  end

  def destroy
    @recipe = Recipe.find_by(:id => params[:id])
    @recipe.destroy
    flash[:success] = "Recipe deleted."
    redirect_to '/recipes'
  end
end
