module Admin
  class SkillsController < AdminController
    def new
      @skill = Skill.new
    end

    def create
      @skill = Skill.new
      if @skill.save
        redirect_to skill_path
      else
        flash[:alert] = 'Erreur !!!'
        render :new
      end
    end

    def index
      # @skills = Skill.all
      @skills = Skill.joins(:projects).all
    end

    def edit
      @skill = Skill.find(params[:id])
    end

    def update
      @skill = Skill.find(params[:id])
      @skill.update(skill_params)
      if @skill.save
        redirect_to skill_path
      else
        flash[:alert] = 'Erreur !!!'
        render :new
      end
    end

    def destroy
      @skill = Skill.find(params[:id])
      @skill.destroy
    end

    private

    def skill_params
      params.require(:skill).permit(:title, :rating)
    end
  end
end
