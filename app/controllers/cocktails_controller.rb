class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end
  def show
  end
  def new
    @cocktail = Cocktail.new
  end
  def create
  end
  def edit
    @dose = Dose.new
  end
  def update
    # @cocktail = Cocktail.find(params[:id])
    # if @cocktail.update(cocktail_params)
    #   redirect_to index_cocktail_path(@cocktail, notice: "Cocktail was successfully updated." )
    # else
    #   render action: :edit
    # end

    if @cocktail.update(cocktail_params)
        redirect_to cocktail_url(@cocktail), notice: "Cocktail was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
  end

  private
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo_url)
  end

end
