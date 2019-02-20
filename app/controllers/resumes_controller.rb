class ResumesController < ApplicationController
  skip_before_action :authorized, only: %i[show]
  before_action :set_resume, only: %i[show update]
  
  # GET /resumes
  def index
    
    @resumes = Resume.all

    render json: @resumes
  end

  # GET /resumes/1
  def show
    
    render json: @resume
  end

  # POST /resumes
  def create
    @resume = Resume.new(resume_params)

    if @resume.save
      render json: @resume, status: :created, location: @resume
    else
      render json: @resume.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resumes/1
  def update
    if resume_params.include?(:educations_attributes)
    @resume.educations.destroy_all    
    end
    if resume_params.include?(:experiences_attributes)
      @resume.experiences.destroy_all    
      end
      if resume_params.include?(:projects_attributes)
        @resume.projects.destroy_all    
        end
        if resume_params.include?(:skills_attributes)
          @resume.tools.where.not(id: 1).destroy_all
          @resume.interpersonals.where.not(id: 1).destroy_all
          @resume.others.where.not(id: 1).destroy_all
        end
        if resume_params.include?(:social_medium_attributes)
          @resume.social_medium.destroy_all    
          end
          
    if @resume.update(resume_params)
      render json: @resume
    else
      render json: @resume.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resumes/1
  # def destroy
  #   @resume.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume
      @resume = Resume.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resume_params
      params.require(:resume).permit(:user_id, :skill, :experience, :project, :social_media,
        :profile_attributes => [:id, :name, :age, :location, :number, :profile_picture, :background_image, :about_me, :headline, :profile_email ],
        :educations_attributes => [:id, :start_date, :end_date, :location, :degree, :university, :description ],
        :experiences_attributes => [:id, :start_date, :end_date, :location, :role, :company, :description ],
        :projects_attributes => [:id, :name, :url, :description, :image],
        :social_medium_attributes => [:id, :name],
        :skills_attributes => [:id, :tools_attributes => [:id, :name], :interpersonals_attributes => [:id, :name], :others_attributes => [:id, :name]])
    end
end

