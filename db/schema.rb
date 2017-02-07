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

ActiveRecord::Schema.define(version: 20170206194340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mascots", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: :cascade do |t|
    t.time     "hour"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "speakers", force: :cascade do |t|
    t.string   "name"
    t.string   "twitter_account"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nickname"
    t.text     "bio"
    t.boolean  "is_keynote"
    t.string   "company"
    t.binary   "image_field"
    t.integer  "speaker_order"
  end

  create_table "talk_rates", force: :cascade do |t|
    t.integer "rate"
    t.string  "comment"
    t.string  "user_name"
    t.integer "talk_id"
  end

  create_table "talks", force: :cascade do |t|
    t.integer  "speaker_id"
    t.integer  "event_id"
    t.integer  "order"
    t.string   "name"
    t.text     "description"
    t.boolean  "is_keynote",   default: false
    t.time     "starts_at"
    t.time     "ends_at"
    t.integer  "rate"
    t.text     "note"
    t.boolean  "is_fav",       default: false
    t.boolean  "is_canceled",  default: false
    t.boolean  "has_feedback", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "schedule_id"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
