class CreateNouveauTickets < ActiveRecord::Migration
  def change
    create_table :nouveau_tickets do |t|
      t.string :name
      t.string :seat_id
      t.text :adress
      t.decimal :price
      t.string :email_address
      t.datetime :date

      t.timestamps
    end
  end
end
