class CreateTravailleurs < ActiveRecord::Migration
  def change
    create_table :travailleurs do |t|
      t.string :nom
      t.references :principal_groupe, index: true
      t.references :sous_groupe, index: true
      t.references :agence, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
