class PrestationFacture < ApplicationRecord
  belongs_to :facture
  belongs_to :prestation
end
