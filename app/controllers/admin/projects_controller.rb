module Admin
  class ProjectsController < AdminController
    def new
      @project = Project.new
    end

    def create
      @project = Project.new
      if @project.save
        redirect_to project_path(@project)
      else
        flash[:alert] = 'erreur'
        render :new
      end
    end

    def index
      @projects = Project.all
    end

    def show
      @project = Project.find(params[:id])
    end

    def edit
      @project = Project.find(params[:id])
    end

    def update
      @project = Project.find(params[:id])
      @project.update(project_params)
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
    end

    private

    def project_params
      params.require(:project).permit(:title, :description, :finished, :date_start, :date_end, :url, :collaborator_desc, :photo)
    end
  end
end
