class BaseCatalogue < ApplicationRecord
    has_many :factures
    has_many :prestations
  end
  