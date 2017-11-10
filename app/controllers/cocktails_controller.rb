class CocktailsController < ApplicationController
  before_action :set_cocktail, only:[:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_url cocktails_path, notice: 'Cocktail was successfully destroyed.'
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end
end
