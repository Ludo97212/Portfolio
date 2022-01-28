module Admin
  class ProjectsController < AdminController
    def new
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      # @project.skills = params[:skills]
      if @project.save
        flash[:notice] = 'Validé'
        redirect_to project_path(@project)
      else
        flash[:alert] = 'Erreur !!!'
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
      if @project.save
        redirect_to project_path
      else
        flash[:alert] = 'Erreur !!!'
        render :new
      end
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
    end

    private

    def project_params
      params.require(:project).permit(:title, :description, :skills, :finished, :date_start, :date_end, :url, :collaborator_desc, :photo)
    end
  end
end
