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

ActiveRecord::Schema.define(version: 20161213110955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.integer  "team2_id"
    t.string   "status"
    t.integer  "winner_id"
    t.integer  "winner_score"
    t.integer  "loser_score"
    t.integer  "team1_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "location"
    t.date     "start_date"
  end

  create_table "team_users", force: :cascade do |t|
    t.string   "status"
    t.integer  "user_id"
    t.integer  "team_id"
    t.integer  "requester_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["requester_id"], name: "index_team_users_on_requester_id", using: :btree
    t.index ["team_id"], name: "index_team_users_on_team_id", using: :btree
    t.index ["user_id"], name: "index_team_users_on_user_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.text     "description"
    t.integer  "captain_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["captain_id"], name: "index_teams_on_captain_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "age"
    t.string   "city"
    t.string   "gender"
    t.string   "description"
    t.text     "favorite_position"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "team_users", "teams"
  add_foreign_key "team_users", "users"
  add_foreign_key "team_users", "users", column: "requester_id"
  add_foreign_key "teams", "users", column: "captain_id"
end
