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

ActiveRecord::Schema.define(:version => 20140126234548) do

  create_table "adjuncts", :force => true do |t|
    t.string   "adjunct"
    t.decimal  "weight"
    t.string   "units"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "recipe_id"
  end

  create_table "beer_styles", :force => true do |t|
    t.string   "beer_style"
    t.integer  "bjcp_category_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.integer  "ibu_min"
    t.integer  "ibu_max"
    t.integer  "srm_min"
    t.integer  "srm_max"
    t.decimal  "og_min",           :precision => 4, :scale => 3
    t.decimal  "og_max",           :precision => 4, :scale => 3
    t.decimal  "fg_min",           :precision => 4, :scale => 3
    t.decimal  "fg_max",           :precision => 4, :scale => 3
    t.decimal  "abv_min",          :precision => 3, :scale => 1
    t.decimal  "abv_max",          :precision => 3, :scale => 1
  end

  create_table "bjcp_categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "bjcp_category_id"
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
    t.string   "estimate_fg"
    t.decimal  "estimate_alcohol"
    t.string   "actual_og"
    t.string   "image"
    t.string   "colour"
    t.string   "brewing_method"
    t.string   "overall_beverage_style"
    t.string   "bjcp_beer_style"
    t.string   "beer_thinker"
    t.string   "recipe_name"
    t.string   "status"
  end

  add_index "brews", ["user_id", "created_at"], :name => "index_brews_on_user_id_and_created_at", :unique => true

  create_table "fermentations", :force => true do |t|
    t.datetime "date_time"
    t.decimal  "day"
    t.string   "specific_gravity"
    t.decimal  "temperature"
    t.decimal  "pressure"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "brew_id"
    t.string   "pressure_unit"
    t.string   "temperature_unit"
  end

  create_table "generic_categories", :force => true do |t|
    t.string   "generic_category"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "grains", :force => true do |t|
    t.string   "name"
    t.decimal  "amount"
    t.string   "colour"
    t.string   "steep_time"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "recipe_id"
    t.decimal  "steep_water"
    t.decimal  "steep_water_temp"
    t.string   "weight_unit"
    t.string   "water_unit"
    t.string   "colour_unit"
    t.string   "water_temp_unit"
    t.string   "method"
    t.string   "steep_time_unit"
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
    t.decimal  "steep_water_temp"
    t.decimal  "steep_water_volume"
    t.string   "amount_unit"
    t.string   "boil_or_steep_unit"
    t.string   "liquid_type"
    t.string   "temp_unit"
    t.string   "volume_unit"
    t.string   "form"
  end

  create_table "other_adjuncts", :force => true do |t|
    t.string   "adjunct"
    t.decimal  "weight"
    t.string   "units"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "recipe_id"
  end

  create_table "other_extracts", :force => true do |t|
    t.string   "extract"
    t.decimal  "weight"
    t.string   "units"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "recipe_id"
  end

  create_table "recipes", :force => true do |t|
    t.string   "recipe_code"
    t.string   "original_gravity"
    t.integer  "user_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
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
    t.integer  "times_brewed"
    t.string   "recipe_name"
    t.string   "other_ingredient"
    t.integer  "adjunct_weight"
    t.string   "adjunct_unit"
    t.integer  "other_adjunt_weight"
    t.integer  "extract_weight"
    t.string   "extract_unit"
    t.string   "other_adjunct_unit"
    t.integer  "other_extract_weight"
    t.string   "other_extract_unit"
    t.string   "yeast_type"
    t.decimal  "yeast_starter_size"
    t.string   "yeast_starter_unit"
    t.decimal  "yeast_weight"
    t.string   "yeast_weight_unit"
    t.decimal  "yeast_packs"
    t.decimal  "bitterness"
    t.decimal  "colour"
    t.string   "colour_unit"
    t.string   "water_unit"
    t.text     "recipe_note"
    t.decimal  "estimate_alcohol"
    t.string   "estimate_fg"
    t.string   "generic_category"
    t.string   "status"
    t.decimal  "fermentation_temperature"
    t.string   "fermentation_temperature_unit"
    t.string   "style_spec"
  end

  add_index "recipes", ["user_id", "created_at"], :name => "index_recipes_on_user_id_and_created_at"

  create_table "sugars", :force => true do |t|
    t.string   "sugar"
    t.decimal  "weight"
    t.string   "units"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "recipe_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "williams_warn_number"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.string   "secret_code"
  end

  add_index "users", ["email", "williams_warn_number"], :name => "index_users_on_email_and_williams_warn_number", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "ww_beer_kits", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "ww_extracts", :force => true do |t|
    t.string   "extract"
    t.decimal  "weight"
    t.string   "units"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "recipe_id"
  end

end
