class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.integer :type
      t.text :description
      t.integer :status

      t.timestamps null: false
    end
  end
end
