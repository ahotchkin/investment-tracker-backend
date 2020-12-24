class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :symbol
      t.string :industry
      t.string :sector

      t.timestamps
    end
  end
end
