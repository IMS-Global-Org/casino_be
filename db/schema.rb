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

ActiveRecord::Schema[7.0].define(version: 2024_04_23_190904) do
  create_table "addresses", force: :cascade do |t|
    t.string "street1", limit: 20
    t.string "street2", limit: 20
    t.integer "area_code"
    t.integer "area_code_suffix"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_addresses_on_city_id"
    t.index ["client_id"], name: "index_addresses_on_client_id"
    t.index ["country_id"], name: "index_addresses_on_country_id"
    t.index ["state_id"], name: "index_addresses_on_state_id"
  end

  create_table "authentications", primary_key: "uuid", id: { type: :string, limit: 20 }, force: :cascade do |t|
    t.string "username", limit: 20
    t.string "password", limit: 20
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_authentications_on_client_id"
  end

  create_table "card_decks", force: :cascade do |t|
    t.string "brand", limit: 20
    t.string "classification", limit: 20
    t.integer "number"
    t.boolean "jokers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "rank", limit: 1
    t.string "suit", limit: 10
    t.string "name", limit: 10
    t.integer "points"
    t.integer "card_deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_deck_id"], name: "index_cards_on_card_deck_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name", limit: 20
    t.string "last_name", limit: 20
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name", limit: 30
    t.integer "client_id"
    t.integer "card_deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_deck_id"], name: "index_games_on_card_deck_id"
    t.index ["client_id"], name: "index_games_on_client_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "points"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_scores_on_game_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "clients"
  add_foreign_key "addresses", "countries"
  add_foreign_key "addresses", "states"
  add_foreign_key "authentications", "clients"
  add_foreign_key "cards", "card_decks"
  add_foreign_key "games", "card_decks"
  add_foreign_key "games", "clients"
  add_foreign_key "scores", "games"
end
