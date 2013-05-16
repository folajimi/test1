class CreateAddPone2ToTickets < ActiveRecord::Migration
  def change
    create_table :add_pone2_to_tickets do |t|
      t.string :phone2

      t.timestamps
    end
  end
end
