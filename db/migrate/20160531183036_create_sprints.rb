class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.date :initial_date
      t.date :final_date

      t.timestamps null: false
    end
  end
end
