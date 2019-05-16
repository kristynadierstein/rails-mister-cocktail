class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]


  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
    @ingredient = Ingredient.find(params[:ingredient_id])
  end


  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  # def
  #   @dose = Dose.find_by(@cocktail)
  # end
end
