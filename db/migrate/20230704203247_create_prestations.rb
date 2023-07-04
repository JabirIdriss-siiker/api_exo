class CreatePrestations < ActiveRecord::Migration[7.0]
  def change
    create_table :prestations do |t|
      t.string :prestation_id
      t.string :nom
      t.references :base_catalogue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
