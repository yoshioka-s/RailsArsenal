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

ActiveRecord::Schema.define(version: 20150824002952) do

  create_table "User", force: :cascade do |t|
    t.string  "username", limit: 50,  default: "anonymouse", null: false
    t.string  "password", limit: 100,                        null: false
    t.integer "status",   limit: 4,   default: 0,            null: false
    t.string  "email",    limit: 100, default: "",           null: false
  end

  create_table "post", force: :cascade do |t|
    t.integer  "user_id",   limit: 4,   default: 0, null: false
    t.string   "text",      limit: 525
    t.integer  "nice",      limit: 4,   default: 0, null: false
    t.integer  "boo",       limit: 4,   default: 0, null: false
    t.datetime "timestamp",                         null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "user", force: :cascade do |t|
    t.string  "username",   limit: 100, default: "anonymouse", null: false
    t.string  "password",   limit: 100, default: "",           null: false
    t.string  "email",      limit: 100, default: "",           null: false
    t.integer "validation", limit: 4,   default: 0,            null: false
    t.integer "status",     limit: 4,   default: 0,            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "password",   limit: 255
    t.string   "email",      limit: 255
    t.integer  "validation", limit: 4
    t.integer  "status",     limit: 4
    t.datetime "createdAt",              null: false
    t.datetime "updatedAt",              null: false
  end

end
