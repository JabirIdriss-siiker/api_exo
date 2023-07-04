Rails.application.routes.draw do
  resources :factures, only: [:index, :show]
  resources :base_clients, only: [:index, :show]
  resources :base_catalogues, only: [:index, :show]
  resources :parametre_tvas, only: [:index, :show]
  resources :prestations, only: [:index, :show]
  resources :prestation_factures, only: [:index, :show]
end
