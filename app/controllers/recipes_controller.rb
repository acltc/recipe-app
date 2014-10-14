class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by(:id => params[:id])
    # @recipe = Recipe.find(params[:id])
  end
end
