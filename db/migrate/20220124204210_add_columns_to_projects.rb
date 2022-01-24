class AddColumnsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :title, :string
    add_column :projects, :description, :text
    add_column :projects, :finished, :boolean
    add_column :projects, :date_start, :date
    add_column :projects, :date_end, :date
    add_column :projects, :url, :string
    add_column :projects, :collaborator_desc, :string
  end
end
