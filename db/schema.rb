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

ActiveRecord::Schema.define(version: 20151204095947) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.integer  "created_by", limit: 4,   null: false
    t.integer  "updated_by", limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "zip",        limit: 5,   null: false
    t.integer  "client_id",  limit: 4,   null: false
    t.integer  "created_by", limit: 4,   null: false
    t.integer  "updated_by", limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "locations", ["client_id"], name: "index_locations_on_client_id", using: :btree

  create_table "physicians", force: :cascade do |t|
    t.string   "qualification",       limit: 255,                 null: false
    t.string   "designation",         limit: 255,                 null: false
    t.string   "group",               limit: 255,                 null: false
    t.string   "address",             limit: 255,                 null: false
    t.string   "department",          limit: 255,                 null: false
    t.string   "first_name",          limit: 255,                 null: false
    t.string   "middle_name",         limit: 255,                 null: false
    t.integer  "npi_number",          limit: 4,                   null: false
    t.string   "last_name",           limit: 255,                 null: false
    t.string   "email",               limit: 255
    t.integer  "years_of_experience", limit: 4,                   null: false
    t.string   "relationship",        limit: 10
    t.boolean  "is_involved",                     default: false, null: false
    t.boolean  "is_lead",                         default: false, null: false
    t.integer  "speciality_id",       limit: 4,                   null: false
    t.integer  "location_id",         limit: 4,                   null: false
    t.integer  "client_id",           limit: 4,                   null: false
    t.integer  "created_by",          limit: 4,                   null: false
    t.integer  "updated_by",          limit: 4,                   null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "physicians", ["client_id"], name: "index_physicians_on_client_id", using: :btree
  add_index "physicians", ["location_id"], name: "index_physicians_on_location_id", using: :btree
  add_index "physicians", ["speciality_id"], name: "index_physicians_on_speciality_id", using: :btree

  create_table "specialities", force: :cascade do |t|
    t.string   "name",       limit: 100, null: false
    t.integer  "client_id",  limit: 4,   null: false
    t.integer  "created_by", limit: 4,   null: false
    t.integer  "updated_by", limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "specialities", ["client_id"], name: "index_specialities_on_client_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",           limit: 255,   default: "email", null: false
    t.string   "uid",                limit: 255,   default: "",      null: false
    t.string   "encrypted_password", limit: 255,   default: "",      null: false
    t.integer  "sign_in_count",      limit: 4,     default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip", limit: 255
    t.string   "last_sign_in_ip",    limit: 255
    t.string   "name",               limit: 255
    t.string   "email",              limit: 255
    t.text     "tokens",             limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  add_foreign_key "locations", "clients"
  add_foreign_key "physicians", "clients"
  add_foreign_key "physicians", "locations"
  add_foreign_key "physicians", "specialities"
  add_foreign_key "specialities", "clients"
end
