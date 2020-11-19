class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def new
    @cocktail = Cocktail.new
  end
end
