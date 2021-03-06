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

ActiveRecord::Schema.define(version: 20160614071730) do

  create_table "brands", force: :cascade do |t|
    t.string   "nameJP"
    t.string   "nameEng"
    t.string   "rakutenURL"
    t.string   "yahooURL"
    t.string   "officialURL"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "imageURL"
    t.text     "description"
    t.string   "rakuten2ndURL"
    t.text     "categoryRakutenHTML"
    t.text     "categoryRakuten2ndHTML"
    t.text     "categoryYahooHTML"
    t.text     "categoryYahooSPHTML"
    t.text     "categoryOfficialHTML"
  end

  create_table "images", force: :cascade do |t|
    t.string   "imageURLCommonPart"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "item_number"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.string   "imgURLcommonPart"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "category"
    t.integer  "brand_id"
    t.string   "material"
    t.string   "madein"
    t.string   "process"
    t.integer  "model_id"
    t.text     "detail"
  end

  add_index "items", ["brand_id"], name: "index_items_on_brand_id"

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "height"
    t.string   "weight"
    t.string   "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relateds", force: :cascade do |t|
    t.string   "itemName"
    t.string   "itemNumber"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "parentItemNumber"
    t.string   "imageURLCommonPart"
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "measurment"
    t.string   "item_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "measurement"
  end

end
