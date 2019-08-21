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

ActiveRecord::Schema.define(version: 2019_08_21_104125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "photo"
    t.integer "rating"
    t.string "website_link"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_facilities_on_category_id"
    t.index ["city_id"], name: "index_facilities_on_city_id"
    t.index ["user_id"], name: "index_facilities_on_user_id"
  end

  create_table "feature_categories", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_feature_categories_on_category_id"
    t.index ["feature_id"], name: "index_feature_categories_on_feature_id"
  end

  create_table "feature_facilities", force: :cascade do |t|
    t.bigint "facility_id"
    t.bigint "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_feature_facilities_on_facility_id"
    t.index ["feature_id"], name: "index_feature_facilities_on_feature_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.string "photo"
    t.bigint "facility_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_reviews_on_facility_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "country"
    t.string "kids_age_group"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "facilities", "categories"
  add_foreign_key "facilities", "cities"
  add_foreign_key "facilities", "users"
  add_foreign_key "feature_categories", "categories"
  add_foreign_key "feature_categories", "features"
  add_foreign_key "feature_facilities", "facilities"
  add_foreign_key "feature_facilities", "features"
  add_foreign_key "reviews", "facilities"
  add_foreign_key "reviews", "users"
end
