# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_19_000827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "restaurant_id", null: false
    t.bigint "hotel_id", null: false
    t.bigint "club_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "bookable_type", null: false
    t.bigint "bookable_id", null: false
    t.index ["bookable_type", "bookable_id"], name: "index_bookings_on_bookable_type_and_bookable_id"
    t.index ["club_id"], name: "index_bookings_on_club_id"
    t.index ["hotel_id"], name: "index_bookings_on_hotel_id"
    t.index ["restaurant_id"], name: "index_bookings_on_restaurant_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.date "opening_time"
    t.date "closing_time"
    t.string "description"
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_clubs_on_city_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_hotels_on_city_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.time "opening_time"
    t.time "closing_time"
    t.string "description"
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_restaurants_on_city_id"
  end

  add_foreign_key "bookings", "clubs"
  add_foreign_key "bookings", "hotels"
  add_foreign_key "bookings", "restaurants"
  add_foreign_key "clubs", "cities"
  add_foreign_key "hotels", "cities"
  add_foreign_key "restaurants", "cities"
end
