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

ActiveRecord::Schema.define(version: 20140709011353) do

  create_table "clients", force: true do |t|
    t.string   "billing_address"
    t.string   "zip_code"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drones", force: true do |t|
    t.string   "name"
    t.integer  "category"
    t.decimal  "price",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flights", force: true do |t|
    t.integer  "drone_id"
    t.integer  "parcel_id"
    t.integer  "order_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "consultant_id"
    t.integer  "client_id"
    t.decimal  "total_htt",     precision: 10, scale: 0
    t.decimal  "total_htc",     precision: 10, scale: 0
    t.decimal  "shipping",      precision: 10, scale: 0
    t.decimal  "taxes",         precision: 10, scale: 0
    t.decimal  "reduction",     precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parcels", force: true do |t|
    t.integer  "client_id"
    t.string   "name"
    t.integer  "hectare"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "gender"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "telephone"
    t.string   "billing_address"
    t.string   "zipcode"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
