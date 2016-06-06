class AddTitleToSprints < ActiveRecord::Migration
  def change
    add_column :sprints, :title, :string
  end
end
