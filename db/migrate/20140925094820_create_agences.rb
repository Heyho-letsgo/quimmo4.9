class CreateAgences < ActiveRecord::Migration
  def change
    create_table :agences do |t|
      t.string :nom
      t.references :principal_groupe, index: true
      t.references :sous_groupe, index: true

      t.timestamps
    end
  end
end
