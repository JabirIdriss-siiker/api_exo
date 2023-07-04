class CreateFactures < ActiveRecord::Migration[7.0]
  def change
    create_table :factures do |t|
      t.string :facture_id
      t.date :date_creation
      t.decimal :ttc
      t.references :base_client, null: false, foreign_key: true
      t.references :base_catalogue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
