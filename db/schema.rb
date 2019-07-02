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

ActiveRecord::Schema.define(version: 2019_07_02_054521) do

  create_table "inquiries", force: :cascade do |t|
    t.integer "user_id"
    t.string "inquiry_contents"
    t.string "theater_name"
    t.string "theater_name_kana"
    t.string "person_in_charge"
    t.string "email"
    t.string "phonenumber"
    t.string "postalcode"
    t.string "address"
    t.text "theater_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiry_replies", force: :cascade do |t|
    t.integer "inquiry_id"
    t.integer "admin_id"
    t.string "reply_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "theater_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "theater_id"
    t.integer "user_id"
    t.string "title"
    t.string "body"
    t.text "review_image"
    t.integer "review_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theaters", force: :cascade do |t|
    t.string "theater_name"
    t.text "theater_image"
    t.string "postalcode"
    t.string "address"
    t.string "phonenumber"
    t.string "introduction"
    t.integer "theater_id"
    t.integer "user_id"
    t.string "title"
    t.string "body"
    t.text "review_image"
    t.integer "review_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
