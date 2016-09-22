class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show]

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    render json: @ingredient
  end


  private :set_ingredient
end
