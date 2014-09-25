class CreateSousGroupes < ActiveRecord::Migration
  def change
    create_table :sous_groupes do |t|
      t.string :nom
      t.references :principal_groupe, index: true

      t.timestamps
    end
  end
end
