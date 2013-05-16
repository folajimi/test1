class CreateJimbo2s < ActiveRecord::Migration
  def change
    create_table :jimbo2s do |t|
      t.float :age
      t.text :adresse

      t.timestamps
    end
  end
end
