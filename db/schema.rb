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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120621195652) do

  create_table "achievements", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.string   "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "achievements", ["user_id", "created_at"], :name => "index_achievements_on_user_id_and_created_at"

  create_table "microposts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "space_id"
    t.string   "header"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "type"
    t.string   "location"
    t.integer  "ups"
    t.string   "tags"
    t.string   "link"
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "nolyjins", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "nolyjins", ["user_id", "created_at"], :name => "index_nolyjins_on_user_id_and_created_at"

  create_table "snolyjins", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "snolyjins", ["user_id", "created_at"], :name => "index_snolyjins_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "login_id"
    t.string   "first_name"
    t.string   "surname"
    t.string   "status"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.string   "Avatar"
    t.string   "aboutme"
    t.integer  "type"
    t.string   "location"
    t.integer  "ups"
    t.string   "tags"
  end

  add_index "users", ["login_id"], :name => "index_users_on_login_id", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
