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

ActiveRecord::Schema.define(version: 20140517024103) do

  create_table "comment_polls", force: true do |t|
    t.string   "user"
    t.string   "bill"
    t.string   "question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comment_id"
  end

  create_table "comments", force: true do |t|
    t.string   "bill"
    t.string   "text"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "poll_id"
    t.string   "user_id"
    t.string   "user_email"
    t.integer  "make_comment_poll"
  end

  create_table "polls", force: true do |t|
    t.string   "bill"
    t.string   "question"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "address"
    t.string   "zip"
    t.string   "demographics"
    t.string   "type"
    t.integer  "featured"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: true do |t|
    t.string   "user_id"
    t.boolean  "in_favor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "poll_id"
    t.string   "email"
    t.string   "zip"
    t.string   "comment_text"
    t.string   "comment_id"
    t.string   "bill_id"
  end

end
