class DosesController < ApplicationController
  before_action :set_cocktail, except: :destroy

  # get /cocktails/:cocktail_id/doses/new
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  # post /cocktails/:cocktail_id/doses
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
