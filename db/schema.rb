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

ActiveRecord::Schema.define(:version => 20120604211308) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories_families", :id => false, :force => true do |t|
    t.integer  "category_id"
    t.integer  "family_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "compares", :force => true do |t|
    t.date     "date"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "devices", :force => true do |t|
    t.string   "name"
    t.date     "launch"
    t.string   "form"
    t.float    "width"
    t.float    "height"
    t.float    "depth"
    t.float    "consumption"
    t.float    "btu"
    t.float    "weight"
    t.integer  "ru"
    t.integer  "oem_id"
    t.boolean  "isoem"
    t.string   "image"
    t.integer  "segment_id"
    t.integer  "family_id"
    t.integer  "manufactory_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "devices_compares", :id => false, :force => true do |t|
    t.integer  "device_id"
    t.integer  "compare_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fabricantes", :force => true do |t|
    t.string   "nome"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "families", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "integrations", :id => false, :force => true do |t|
    t.integer  "device_a_id"
    t.integer  "device_b_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "categoria_id"
    t.string   "name"
    t.string   "metric"
    t.boolean  "compliance"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "segments", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "similars", :id => false, :force => true do |t|
    t.integer  "device_c_id"
    t.integer  "device_d_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "specifications", :force => true do |t|
    t.integer  "item_id"
    t.integer  "device_id"
    t.boolean  "compliance"
    t.string   "decription"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
