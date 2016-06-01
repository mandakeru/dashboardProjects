class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :resource_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
