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

ActiveRecord::Schema.define(version: 2019_03_07_153757) do

  create_table "dinner_guests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "dinner_party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dinner_parties", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "date"
    t.string "location"
    t.string "cuisine"
    t.integer "max_guests"
    t.float "price_per_guest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.text "review_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dinner_guest_id"
    t.integer "rating"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
