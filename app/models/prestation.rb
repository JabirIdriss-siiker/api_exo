class Prestation < ApplicationRecord
  belongs_to :base_catalogue
  has_many :prestation_factures
  has_many :factures, through: :prestation_factures
end
