module Admin
  class SkillsController < AdminController
    def new
      @skill = Skill.new
    end

    def create
      @skill = Skill.new
      if @skill.save
        redirect_to skill_path(@skill)
      else
        render :new
      end
    end

    def index
      @skills = Skill.all
    end

    # def show
    #   @skill = Skill.find(params[:id])
    # end

    def edit
      @skill = Skill.find(params[:id])
    end

    def update
      @skill = Skill.find(params[:id])
      @skill.update(skill_params)
    end

    def destroy
      @skill = Skill.find(params[:id])
      @skill.destroy
    end

    private

    def flat_params
      params.require(:skill).permit(:title, :rating)
    end
  end
end
