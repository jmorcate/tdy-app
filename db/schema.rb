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

ActiveRecord::Schema.define(version: 20170516085800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "claims", force: :cascade do |t|
    t.integer  "tdy_request_id"
    t.integer  "user_id"
    t.integer  "number_days_hotel"
    t.boolean  "breakfast"
    t.boolean  "meals_provided_by_location"
    t.string   "meals_provided"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["tdy_request_id"], name: "index_claims_on_tdy_request_id", using: :btree
    t.index ["user_id"], name: "index_claims_on_user_id", using: :btree
  end

  create_table "legs", force: :cascade do |t|
    t.string   "mode_transport"
    t.string   "depart"
    t.datetime "depart_time"
    t.string   "destination"
    t.string   "destination_time"
    t.string   "date_time"
    t.integer  "distance"
    t.integer  "claim_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["claim_id"], name: "index_legs_on_claim_id", using: :btree
  end

  create_table "tdy_requests", force: :cascade do |t|
    t.string   "destination"
    t.string   "purpose"
    t.datetime "departure"
    t.datetime "return"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "air"
    t.boolean  "airport_service"
    t.boolean  "train"
    t.boolean  "pomv"
    t.string   "other_transportation"
    t.integer  "driver_id"
    t.datetime "meeting_start"
    t.datetime "meeting_end"
    t.string   "destination_airport"
    t.boolean  "advanced_allowance"
    t.boolean  "official_courier"
    t.string   "budget"
    t.text     "comments"
    t.index ["driver_id"], name: "index_tdy_requests_on_driver_id", using: :btree
  end

  create_table "tdy_requests_users", force: :cascade do |t|
    t.integer "tdy_request_id"
    t.integer "user_id"
    t.index ["tdy_request_id"], name: "index_tdy_requests_users_on_tdy_request_id", using: :btree
    t.index ["user_id"], name: "index_tdy_requests_users_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "tdy_requests", "users", column: "driver_id"
end
