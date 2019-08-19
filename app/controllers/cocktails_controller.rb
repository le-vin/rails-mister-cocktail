class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: 'Cocktail was successfully added.'
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(del_param[:id])
    @cocktail.delete
    redirect_to cocktails_path, notice: 'Cocktail was successfully deleted.'
  end

  private

  def del_param
    params.permit(:id)
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :feeling, :description, :photo)
  end
end
