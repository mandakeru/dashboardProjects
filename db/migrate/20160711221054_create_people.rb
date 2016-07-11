class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :birth
      t.string :phone
      t.string :cpf
      t.string :rg

      t.timestamps null: false
    end
  end
end
