class AmountsController < ApplicationController
  before_action :set_amount, only: [:show, :update, :destroy]

  # GET /amounts
  # GET /amounts.json
  def index
    @amounts = Amount.all

    render json: @amounts
  end

  # GET /amounts/1
  # GET /amounts/1.json
  def show
    render json: @amount
  end

  # POST /amounts
  # POST /amounts.json
  def create
    @amount = Amount.new(amount_params)

    if @amount.save
      render json: @amount, status: :created, location: @amount
    else
      render json: @amount.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /amounts/1
  # PATCH/PUT /amounts/1.json
  def update
    @amount = Amount.find(params[:id])

    if @amount.update(amount_params)
      head :no_content
    else
      render json: @amount.errors, status: :unprocessable_entity
    end
  end

  # DELETE /amounts/1
  # DELETE /amounts/1.json
  def destroy
    @amount.destroy

    head :no_content
  end

  private

    def set_amount
      @amount = Amount.find(params[:id])
    end

    def amount_params
      params.require(:amount).permit(:recipe_id, :ingredient_id, :quantity)
    end
end
