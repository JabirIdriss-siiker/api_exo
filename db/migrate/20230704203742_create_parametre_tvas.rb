class CreateParametreTvas < ActiveRecord::Migration[7.0]
  def change
    create_table :parametre_tvas do |t|
      t.string :parametre_tva_id
      t.decimal :taux_tva
      t.date :date_debut_validite
      t.date :date_fin_validite

      t.timestamps
    end
  end
end
