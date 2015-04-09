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

ActiveRecord::Schema.define(version: 20150409222655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "followings", force: :cascade do |t|
    t.integer  "follower_id", null: false
    t.integer  "followee_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "followings", ["followee_id"], name: "index_followings_on_followee_id", using: :btree
  add_index "followings", ["follower_id"], name: "index_followings_on_follower_id", using: :btree

  create_table "patterns", force: :cascade do |t|
    t.string   "title",                    null: false
    t.string   "body"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "num_jugglers", default: 1, null: false
  end

  add_index "patterns", ["num_jugglers"], name: "index_patterns_on_num_jugglers", using: :btree

  create_table "pre_reqs", force: :cascade do |t|
    t.integer  "parent_id",  null: false
    t.integer  "child_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pre_reqs", ["child_id"], name: "index_pre_reqs_on_child_id", using: :btree
  add_index "pre_reqs", ["parent_id"], name: "index_pre_reqs_on_parent_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255, null: false
    t.string   "password_digest", limit: 255, null: false
    t.string   "session_token",   limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
