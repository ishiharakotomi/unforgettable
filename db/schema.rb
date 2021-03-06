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

ActiveRecord::Schema.define(version: 2019_07_31_070015) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "contact_requests", force: :cascade do |t|
    t.string "email"
    t.text "message"
    t.string "nickname"
    t.string "name"
    t.string "name_kana"
    t.integer "postcode"
    t.string "address_city"
    t.string "phonenumber"
    t.string "address_street"
    t.string "address_building"
    t.string "prefecture_name"
    t.string "responsible"
    t.string "theater_url"
    t.boolean "is_confirmed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.text "message"
    t.boolean "is_confirmed", default: false
    t.string "name"
    t.string "name_kana"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviewlikes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "theater_id"
    t.integer "user_id"
    t.string "title"
    t.string "body"
    t.text "review_image_id"
    t.integer "review_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spendlikes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_spendlikes_on_user_id"
  end

  create_table "theaterlikes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "theater_id"
    t.integer "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_theaterlikes_on_review_id"
    t.index ["theater_id"], name: "index_theaterlikes_on_theater_id"
    t.index ["user_id"], name: "index_theaterlikes_on_user_id"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "theater_name"
    t.text "theater_image_id"
    t.string "address"
    t.string "phonenumber"
    t.text "introduction"
    t.string "title"
    t.string "body"
    t.text "review_image"
    t.integer "review_type"
    t.integer "postcode"
    t.string "address_city"
    t.string "address_street"
    t.string "address_building"
    t.string "prefecture_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "theater_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nickname"
    t.string "profile_image_id"
    t.string "name"
    t.string "name_kana"
    t.datetime "deleted_at"
    t.text "self_introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
