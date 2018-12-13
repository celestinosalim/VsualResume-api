class SkillInterpersonalsController < ApplicationController
  before_action :set_skill_interpersonal, only: [:show, :update, :destroy]

  # GET /skill_interpersonals
  def index
    @skill_interpersonals = SkillInterpersonal.all

    render json: @skill_interpersonals
  end

  # GET /skill_interpersonals/1
  def show
    render json: @skill_interpersonal
  end

  # POST /skill_interpersonals
  def create
    @skill_interpersonal = SkillInterpersonal.new(skill_interpersonal_params)

    if @skill_interpersonal.save
      render json: @skill_interpersonal, status: :created, location: @skill_interpersonal
    else
      render json: @skill_interpersonal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skill_interpersonals/1
  def update
    if @skill_interpersonal.update(skill_interpersonal_params)
      render json: @skill_interpersonal
    else
      render json: @skill_interpersonal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skill_interpersonals/1
  def destroy
    @skill_interpersonal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_interpersonal
      @skill_interpersonal = SkillInterpersonal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skill_interpersonal_params
      params.require(:skill_interpersonal).permit(:skill_id, :name)
    end
end
