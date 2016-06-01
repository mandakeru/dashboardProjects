class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :head
      t.string :manager
      t.string :project_title
      t.integer :area
      t.text :description
      t.string :representant
      t.integer :sprints
      t.integer :status
      t.integer :resources_id
      t.date :deadline

      t.timestamps null: false
    end
  end
end
