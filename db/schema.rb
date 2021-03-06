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

ActiveRecord::Schema.define(:version => 20130219173542) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vehicle_options", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "vehicle_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "vehicle_options", ["vehicle_id"], :name => "index_vehicle_options_on_vehicle_id"

  create_table "vehicles", :force => true do |t|
    t.integer  "stock_num"
    t.string   "vin"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "status"
    t.string   "photo"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "customer_id"
    t.decimal  "price",       :precision => 8, :scale => 2
  end

  add_index "vehicles", ["customer_id"], :name => "index_vehicles_on_customer_id"

end
