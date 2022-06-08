class DosesController < ApplicationController
  before_action :set_cocktail
  before_action :set_dose, only: [:update, :destroy]
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to edit_cocktail_path(@cocktail)
    else
    end
  end
  def update

  end
  def destroy
    @dose.destroy

    respond_to do |format|
      format.html { redirect_to edit_cocktail_path(@cocktail), notice: "Dose was successfully destroyed." }
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:quantity, :unity, :ingredient, :ingredient_id)
  end
end
