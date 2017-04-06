class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail.id)
    else
      render :new
    end
  end

  private

  def find_cocktail
    Cocktail.find(params[:id])
  end

  def find_ingredient
    Ingredient.find(params[:ingredient_id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
