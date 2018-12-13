class SkillOthersController < ApplicationController
  before_action :set_skill_other, only: [:show, :update, :destroy]

  # GET /skill_others
  def index
    @skill_others = SkillOther.all

    render json: @skill_others
  end

  # GET /skill_others/1
  def show
    render json: @skill_other
  end

  # POST /skill_others
  def create
    @skill_other = SkillOther.new(skill_other_params)

    if @skill_other.save
      render json: @skill_other, status: :created, location: @skill_other
    else
      render json: @skill_other.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skill_others/1
  def update
    if @skill_other.update(skill_other_params)
      render json: @skill_other
    else
      render json: @skill_other.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skill_others/1
  def destroy
    @skill_other.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_other
      @skill_other = SkillOther.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skill_other_params
      params.require(:skill_other).permit(:skill_id, :name)
    end
end
