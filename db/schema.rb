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

ActiveRecord::Schema.define(version: 2021_02_22_164951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "benches", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "city"
    t.integer "score"
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_benches_on_users_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "starting_date"
    t.string "ending_date"
    t.bigint "benches_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["benches_id"], name: "index_bookings_on_benches_id"
    t.index ["users_id"], name: "index_bookings_on_users_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "description"
    t.integer "rating"
    t.bigint "benches_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["benches_id"], name: "index_reviews_on_benches_id"
    t.index ["users_id"], name: "index_reviews_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "benches", "users", column: "users_id"
  add_foreign_key "bookings", "benches", column: "benches_id"
  add_foreign_key "bookings", "users", column: "users_id"
  add_foreign_key "reviews", "benches", column: "benches_id"
  add_foreign_key "reviews", "users", column: "users_id"
end
