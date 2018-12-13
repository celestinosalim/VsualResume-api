class InterpersonalsController < ApplicationController
  before_action :set_interpersonal, only: [:show, :update, :destroy]

  # GET /interpersonals
  def index
    @interpersonals = Interpersonal.all

    render json: @interpersonals
  end

  # GET /interpersonals/1
  def show
    render json: @interpersonal
  end

  # POST /interpersonals
  def create
    @interpersonal = Interpersonal.new(interpersonal_params)

    if @interpersonal.save
      render json: @interpersonal, status: :created, location: @interpersonal
    else
      render json: @interpersonal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interpersonals/1
  def update
    if @interpersonal.update(interpersonal_params)
      render json: @interpersonal
    else
      render json: @interpersonal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /interpersonals/1
  def destroy
    @interpersonal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interpersonal
      @interpersonal = Interpersonal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interpersonal_params
      params.require(:interpersonal).permit(:skill_id, :name)
    end
end
