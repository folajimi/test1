class CreateJimbolands < ActiveRecord::Migration
  def change
    create_table :jimbolands do |t|
      t.string :nom
      t.text :adresse
      t.decimal :age
      t.float :taille

      t.timestamps
    end
  end
end
