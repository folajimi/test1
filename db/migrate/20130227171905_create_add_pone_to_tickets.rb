class CreateAddPoneToTickets < ActiveRecord::Migration
  def change
    create_table :add_pone_to_tickets do |t|

      t.timestamps
    end
  end
end
