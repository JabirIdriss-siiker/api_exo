class Facture < ApplicationRecord
  belongs_to :base_client
  belongs_to :base_catalogue
  has_many :prestation_factures
  has_many :prestations, through: :prestation_factures
end
