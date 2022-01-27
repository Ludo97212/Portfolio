class ChangeFinishedFromProjects < ActiveRecord::Migration[6.0]
  def change
    change_column :projects, :finished, :boolean, default: false
  end
end
