class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.find(params[:cocktail_id])
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.find(params[:cocktail_id])
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.cocktail = @ingredient
    @ingredient.save
    redirect_to dose_path(@ingredient)
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to dose_path(@ingredient)
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to ingredient_path(@ingredient.cocktail.dose)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
