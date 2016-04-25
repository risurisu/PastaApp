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

ActiveRecord::Schema.define(version: 20160425022050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.text     "description"
    t.integer  "price"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "food_id"
    t.integer  "party_id"
  end

  add_index "orders", ["food_id"], name: "index_orders_on_food_id", using: :btree
  add_index "orders", ["party_id"], name: "index_orders_on_party_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "table_number"
    t.string   "name"
    t.boolean  "admin"
    t.boolean  "has_paid"
  end

  add_index "parties", ["user_id"], name: "index_parties_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "party_id"
    t.integer  "user_id"
    t.boolean  "admin"
  end

  add_index "users", ["party_id"], name: "index_users_on_party_id", using: :btree
  add_index "users", ["user_id"], name: "index_users_on_user_id", using: :btree

  add_foreign_key "orders", "foods"
  add_foreign_key "orders", "parties"
  add_foreign_key "orders", "users"
  add_foreign_key "parties", "users"
  add_foreign_key "users", "parties"
  add_foreign_key "users", "users"
end
