class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show]

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :std_measure, :color)
  end

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    render json: @ingredient
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  private :set_ingredient, :ingredient_params
end
