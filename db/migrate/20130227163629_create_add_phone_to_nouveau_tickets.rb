class CreateAddPhoneToNouveauTickets < ActiveRecord::Migration
  def change
    create_table :add_phone_to_nouveau_tickets do |t|
      t.string :phone

      t.timestamps
    end
  end
end
