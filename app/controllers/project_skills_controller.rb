module Admin
  class ProjectSkillsController < AdminController
    def new
      @project_skill = ProjectSkill.new
    end

    def create
      @project = Project.find(params[:project_id])
      @project_skill = ProjectSkill.new(project_skill_params)
      @project_skill.project = @project
      @project_skill.skill = @skill
      if @project_skill.save
        redirect_to project_project_skills_path(@project)
      else
        render :new
      end
    end

    private

    def flat_params
      params.require(:project_skill).permit(:title, :rating)
    end
  end
end
