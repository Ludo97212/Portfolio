# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Attribution de skills"
  skills_ids = Skill.all.pluck(:id)
# ---------------------------------------
  Project.find_each do |proj|
    s1 = skills_ids.sample
    s2 = skills_ids.excluding(s1).sample
    s3 = skills_ids.excluding(s1, s2).sample
    s4 = skills_ids.excluding(s1, s2, s3).sample
# ---------------------------------------
    proj.project_skills.create(skill_id: s1)
    proj.project_skills.create(skill_id: s2)
    proj.project_skills.create(skill_id: s3)
    proj.project_skills.create(skill_id: s4)
  end

SKILLS = Skill.all
PROJECTS = Project.all
