# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_04_203742) do
  create_table "base_catalogues", force: :cascade do |t|
    t.string "base_catalogue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_clients", force: :cascade do |t|
    t.string "base_client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factures", force: :cascade do |t|
    t.string "facture_id"
    t.date "date_creation"
    t.decimal "ttc"
    t.integer "base_client_id", null: false
    t.integer "base_catalogue_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_catalogue_id"], name: "index_factures_on_base_catalogue_id"
    t.index ["base_client_id"], name: "index_factures_on_base_client_id"
  end

  create_table "parametre_tvas", force: :cascade do |t|
    t.string "parametre_tva_id"
    t.decimal "taux_tva"
    t.date "date_debut_validite"
    t.date "date_fin_validite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prestation_factures", force: :cascade do |t|
    t.string "prestation_facture_id"
    t.integer "facture_id", null: false
    t.integer "prestation_id", null: false
    t.decimal "prix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facture_id"], name: "index_prestation_factures_on_facture_id"
    t.index ["prestation_id"], name: "index_prestation_factures_on_prestation_id"
  end

  create_table "prestations", force: :cascade do |t|
    t.string "prestation_id"
    t.string "nom"
    t.integer "base_catalogue_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_catalogue_id"], name: "index_prestations_on_base_catalogue_id"
  end

  add_foreign_key "factures", "base_catalogues"
  add_foreign_key "factures", "base_clients"
  add_foreign_key "prestation_factures", "factures"
  add_foreign_key "prestation_factures", "prestations"
  add_foreign_key "prestations", "base_catalogues"
end
