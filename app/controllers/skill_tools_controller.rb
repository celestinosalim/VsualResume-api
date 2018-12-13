class SkillToolsController < ApplicationController
  before_action :set_skill_tool, only: [:show, :update, :destroy]

  # GET /skill_tools
  def index
    @skill_tools = SkillTool.all

    render json: @skill_tools
  end

  # GET /skill_tools/1
  def show
    render json: @skill_tool
  end

  # POST /skill_tools
  def create
    @skill_tool = SkillTool.new(skill_tool_params)

    if @skill_tool.save
      render json: @skill_tool, status: :created, location: @skill_tool
    else
      render json: @skill_tool.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skill_tools/1
  def update
    if @skill_tool.update(skill_tool_params)
      render json: @skill_tool
    else
      render json: @skill_tool.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skill_tools/1
  def destroy
    @skill_tool.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_tool
      @skill_tool = SkillTool.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skill_tool_params
      params.require(:skill_tool).permit(:skill_id, :name)
    end
end
