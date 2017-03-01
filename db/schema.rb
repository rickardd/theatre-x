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

ActiveRecord::Schema.define(version: 20170301061929) do

  create_table "abouts", force: :cascade do |t|
    t.text     "column_1"
    t.text     "column_2"
    t.text     "column_3"
    t.string   "title"
    t.string   "image"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "on_page",    default: true
    t.string   "worker_1"
    t.string   "worker_2"
  end

  create_table "avatars", force: :cascade do |t|
    t.string "image"
    t.string "show_id"
  end

  add_index "avatars", ["show_id"], name: "index_avatars_on_show_id", unique: true

  create_table "co_operations", force: :cascade do |t|
    t.text     "column_1"
    t.text     "column_2"
    t.string   "title"
    t.string   "image"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "on_page",    default: true
  end

  create_table "courses", force: :cascade do |t|
    t.text     "column_1"
    t.text     "column_2"
    t.string   "title"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "on_page",    default: true
  end

  create_table "show_dates", force: :cascade do |t|
    t.string   "date"
    t.boolean  "soldOut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "show_id"
  end

  create_table "show_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "show_images", ["show_id"], name: "index_show_images_on_show_id"

  create_table "show_prices", force: :cascade do |t|
    t.integer  "price"
    t.string   "description"
    t.integer  "show_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "primary"
  end

  create_table "shows", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.boolean  "display"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "on_page",     default: true
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
