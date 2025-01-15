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

ActiveRecord::Schema[8.0].define(version: 2025_01_15_033317) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "domains", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "trusted", default: false, null: false
    t.integer "searched_amount", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "whois_informations", force: :cascade do |t|
    t.string "owner_name"
    t.string "owner_email"
    t.date "registered_at"
    t.string "iana_id"
    t.string "owner_phone_number"
    t.date "last_updated_at"
    t.date "expires_at"
    t.string "name_servers"
    t.string "whois_server"
    t.string "domain_statuses"
    t.bigint "domain_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["domain_id"], name: "index_whois_informations_on_domain_id"
  end

  add_foreign_key "whois_informations", "domains"
end
