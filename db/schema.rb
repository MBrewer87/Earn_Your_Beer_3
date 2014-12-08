# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141208184911) do

  create_table "beers", force: true do |t|
    t.integer  "beer_type"
    t.string   "beer_name"
    t.integer  "num_consumed"
    t.integer  "star_rating"
    t.string   "notes"
    t.string   "fav_save"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "calorie"
  end

  create_table "exercises", force: true do |t|
    t.integer  "exercise_category"
    t.integer  "duration"
    t.string   "intensity"
    t.string   "favsave"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "calorie"
  end

  create_table "static_beers", force: true do |t|
    t.string   "beer_cat_name"
    t.float    "calpertype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_exercises", force: true do |t|
    t.string   "exercise_cat_name"
    t.float    "calpermin_low"
    t.float    "calpermin_med"
    t.float    "calpermin_high"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.float    "weight"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
