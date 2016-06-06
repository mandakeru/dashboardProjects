class AddManagerNameToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :manager_name, :string
  end
end
