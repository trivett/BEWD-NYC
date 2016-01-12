# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151220192429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.integer  "shelter_id"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  add_index "animals", ["client_id"], name: "index_animals_on_client_id", using: :btree
  add_index "animals", ["shelter_id"], name: "index_animals_on_shelter_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "shelter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  add_index "clients", ["shelter_id"], name: "index_clients_on_shelter_id", using: :btree

  create_table "shelters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toys", force: :cascade do |t|
    t.string   "name"
    t.integer  "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  add_index "toys", ["animal_id"], name: "index_toys_on_animal_id", using: :btree

  add_foreign_key "animals", "clients"
  add_foreign_key "animals", "shelters"
  add_foreign_key "clients", "shelters"
  add_foreign_key "toys", "animals"
end
