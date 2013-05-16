class NouveauTicket < ActiveRecord::Base
  attr_accessible :adress, :date, :email_address, :name, :price, :seat_id, :phone
end
