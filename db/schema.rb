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

ActiveRecord::Schema.define(:version => 20130215112043) do

  create_table "hops", :force => true do |t|
    t.string   "name"
    t.decimal  "alpha_acids"
    t.decimal  "amount"
    t.string   "boil_or_steep"
    t.decimal  "boil_or_steep_time"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "recipe_id"
  end

  create_table "recipes", :force => true do |t|
    t.string   "recipe_code"
    t.string   "original_gravity"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "extract"
    t.string   "adjunct"
    t.string   "yeast"
    t.decimal  "water"
    t.string   "sugar"
    t.string   "beer_style"
    t.string   "brewing_method"
    t.integer  "iteration"
  end

  add_index "recipes", ["user_id", "created_at"], :name => "index_recipes_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "williams_warn_number"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
  end

  add_index "users", ["email", "williams_warn_number"], :name => "index_users_on_email_and_williams_warn_number", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
