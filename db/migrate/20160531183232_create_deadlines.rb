class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|
      t.date :initial_date
      t.date :final_date

      t.timestamps null: false
    end
  end
end
