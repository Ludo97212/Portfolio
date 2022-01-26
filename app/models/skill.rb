class Skill < ApplicationRecord
  has_many :project_skills
  has_many :projects, through: :project_skills
  validates :title, :rating, presence: true
  validates :rating, inclusion: 1..3
end
