class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by(:id => params[:id])
    # @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(params[:recipe])

    # Recipe.create({"name"=>"asdfasdf", "contributor"=>"asdfadsf", "ingredients"=>"asdfdasf", "directions"=>"asdfasdffsa"})
  end

  def edit
    @recipe = Recipe.find_by(:id => params[:id])
  end

  def update
    @recipe = Recipe.find_by(:id => params[:id])
    @recipe.update(params[:recipe])
  end
end
