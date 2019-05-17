class DosesController < ApplicationController
before_action :set_dose, only: [:destroy]
def new
  @dose = Dose.find(params[:id])
  @dose = Dose.new
end


def create
  @doses = Dose.new(dose_params)
  @cocktail = Cocktail.find(params[:cocktail_id])
  @ingredient = Ingredient.find(params[:dose][:ingredient_id])

  @doses.cocktail_id = @cocktail.id
  @doses.ingredient_id = @ingredient.id

  if @doses.save!
    redirect_to cocktail_path(@cocktail)
  else
    render :new
  end


end


def destroy
  @cocktail = @dose.cocktail.id
  @dose.destroy
  redirect_to cocktail_path(@cocktail)
end

private


def dose_params
  params.require(:dose).permit(:description, :ingredient_id)
end
def set_dose
  @dose = Dose.find(params[:id])
end

end
