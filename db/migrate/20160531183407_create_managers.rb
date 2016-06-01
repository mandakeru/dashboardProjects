class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.string :function
      t.string :area
      t.string :boss

      t.timestamps null: false
    end
  end
end
