class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.date :purchase_date
      t.string :name
      t.string :symbol
      t.string :industry
      t.string :sector
      t.float :number_of_shares
      t.decimal :total_spent, precision: 15, scale: 2

      t.timestamps
    end
  end
end
