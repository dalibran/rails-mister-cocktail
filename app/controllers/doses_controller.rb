class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :new ]
  def new
    @cocktail = find_cocktail
    @dose = Dose.new
    @ingredient = Ingredient.new
  end

  def show
    @cocktail = find_cocktail
    @dose = Dose.find(params[:id])
  end

  def create
    @dose = Dose.new(dose_params)
    @ingredient = Ingredient.find(params["dose"]["ingredient_id"].to_i) unless params["dose"]["ingredient_id"].to_i == 0
    @dose.cocktail = find_cocktail
    @dose.ingredient = @ingredient
    @cocktail = find_cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail.id)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.delete
    redirect_to cocktails_path
  end

  private

  def find_cocktail
    Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
