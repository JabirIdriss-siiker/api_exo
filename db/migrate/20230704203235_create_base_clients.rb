class CreateBaseClients < ActiveRecord::Migration[7.0]
  def change
    create_table :base_clients do |t|
      t.string :base_client_id

      t.timestamps
    end
  end
end
