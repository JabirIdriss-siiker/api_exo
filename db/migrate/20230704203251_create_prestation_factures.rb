class CreatePrestationFactures < ActiveRecord::Migration[7.0]
  def change
    create_table :prestation_factures do |t|
      t.string :prestation_facture_id
      t.references :facture, null: false, foreign_key: true
      t.references :prestation, null: false, foreign_key: true
      t.decimal :prix

      t.timestamps
    end
  end
end
