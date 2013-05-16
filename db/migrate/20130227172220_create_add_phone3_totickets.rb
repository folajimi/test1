class CreateAddPhone3Totickets < ActiveRecord::Migration
  def change
    create_table :add_phone3_totickets do |t|
      t.string :phone

      t.timestamps
    end
  end
end
