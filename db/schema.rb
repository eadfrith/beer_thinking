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

ActiveRecord::Schema.define(:version => 20130313074917) do

  create_table "beer_styles", :force => true do |t|
    t.string   "beer_style"
    t.integer  "bjcp_category_id", :limit => 255
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "bjcp_categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "bjcp_category_id", :limit => 255
  end

  add_index "bjcp_categories", ["bjcp_category_id"], :name => "index_bjcp_categories_on_bjcp_category_id", :unique => true

  create_table "brewing_methods", :force => true do |t|
    t.string   "brewing_method"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "brews", :force => true do |t|
    t.integer  "brew_number"
    t.datetime "start_date_time"
    t.text     "wort_must_production_notes"
    t.text     "clarifiaction"
    t.text     "taste"
    t.integer  "taste_score"
    t.text     "clarity"
    t.text     "carbonation"
    t.decimal  "alcohol_percentage"
    t.text     "other_comments"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "recipe_id"
    t.boolean  "published"
    t.integer  "user_id"
    t.string   "brew_code"
  end

  add_index "brews", ["user_id", "created_at"], :name => "index_brews_on_user_id_and_created_at", :unique => true

  create_table "fermentations", :force => true do |t|
    t.datetime "date_time"
    t.integer  "day"
    t.string   "specific_gravity"
    t.integer  "temperature"
    t.integer  "pressure"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "brew_id"
  end

  create_table "grains", :force => true do |t|
    t.string   "name"
    t.decimal  "amount"
    t.string   "colour"
    t.string   "steep_time"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "recipe_id"
    t.integer  "steep_water"
    t.integer  "steep_water_temp"
  end

  create_table "hops", :force => true do |t|
    t.string   "name"
    t.decimal  "alpha_acids"
    t.decimal  "amount"
    t.string   "boil_or_steep"
    t.decimal  "boil_or_steep_time"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "recipe_id"
    t.integer  "steep_water_temp"
    t.integer  "steep_water_volume"
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
    t.boolean  "published"
    t.string   "bjcp_category"
    t.string   "ww_beer_kits"
    t.string   "other_extract"
    t.string   "other_adjunct"
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

  create_table "ww_beer_kits", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

end
