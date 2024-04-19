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

ActiveRecord::Schema[7.0].define(version: 2024_04_16_160312) do
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

  add_foreign_key "cards", "card_decks"
end
