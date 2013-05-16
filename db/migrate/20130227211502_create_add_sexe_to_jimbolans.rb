class CreateAddSexeToJimbolans < ActiveRecord::Migration
  def change
    create_table :add_sexe_to_jimbolans do |t|
      t.string :sexe

      t.timestamps
    end
  end
end
