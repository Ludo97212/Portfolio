class ChangeColumnCollaboratorDescFromProjects < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :collaborator_desc, :collaborators_desc
  end
end
