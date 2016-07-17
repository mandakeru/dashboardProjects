class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :description
      t.decimal :value
      t.date :payment_date
      t.integer :payment_method

      t.timestamps null: false
    end
  end
end
