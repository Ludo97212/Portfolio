class AddColumnsToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :title, :string
    add_column :skills, :rating, :integer
  end
end
