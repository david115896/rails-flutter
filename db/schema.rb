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

ActiveRecord::Schema.define(version: 2020_04_28_152246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.decimal "price"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description_fr"
    t.string "description_eng"
    t.float "duration"
    t.string "local_name"
    t.string "name_eng"
    t.string "name_fr"
    t.string "website"
    t.string "note_hours"
    t.string "note_price"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.boolean "show"
    t.bigint "theme_id"
    t.index ["city_id"], name: "index_activities_on_city_id"
    t.index ["theme_id"], name: "index_activities_on_theme_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "url"
    t.string "admin"
    t.integer "pos"
    t.string "post_link"
    t.bigint "activity_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_photos_on_activity_id"
    t.index ["city_id"], name: "index_photos_on_city_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name_fr"
    t.string "name_eng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tripactivities", force: :cascade do |t|
    t.bigint "activity_id"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ongoing"
    t.index ["activity_id"], name: "index_tripactivities_on_activity_id"
    t.index ["trip_id"], name: "index_tripactivities_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.datetime "date"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_trips_on_city_id"
  end

end
