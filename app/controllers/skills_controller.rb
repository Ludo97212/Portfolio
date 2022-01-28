class SkillsController < ApplicationController
  def index
    # @skills = Skill.all
    @skills = Skill.joins(:projects).all
  end
end
