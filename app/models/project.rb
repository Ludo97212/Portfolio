class Project < ApplicationRecord
  # has_many :project_skills, dependent: destroy
  has_many :project_skills
  has_many :skills, through: :project_skills
  has_rich_text :description
  has_one_attached :photo
  validates :title, :description, :date_start, presence: true
end
