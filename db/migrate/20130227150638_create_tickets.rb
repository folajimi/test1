class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :adress
      t.decimal :price_paid

      t.timestamps
    end
  end
end
