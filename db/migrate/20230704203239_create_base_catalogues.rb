class CreateBaseCatalogues < ActiveRecord::Migration[7.0]
  def change
    create_table :base_catalogues do |t|
      t.string :base_catalogue_id

      t.timestamps
    end
  end
end
