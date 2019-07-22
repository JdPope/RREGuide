class ExpectationsController < ApplicationController
  before_action :set_expectation, only: [:show, :update, :destroy]

  # GET /expectations
  def index
    @expectations = Expectation.all

    render json: @expectations
  end

  # GET /expectations/1
  def show
    render json: @expectation
  end

  # POST /expectations
  def create
    @expectation = Expectation.new(expectation_params)

    if @expectation.save
      render json: @expectation, status: :created, location: @expectation
    else
      render json: @expectation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expectations/1
  def update
    if @expectation.update(expectation_params)
      render json: @expectation
    else
      render json: @expectation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expectations/1
  def destroy
    @expectation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expectation
      @expectation = Expectation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expectation_params
      params.require(:expectation).permit(:name)
    end
end
